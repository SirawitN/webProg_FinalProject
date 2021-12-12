require 'application_system_test_case'

class MainTest < ApplicationSystemTestCase

	setup do
		@user1 = users(:one)
		@user2 = users(:two)
		@store1 = stores(:one)
		@store2 = stores(:two)
		@product1 = products(:one)
		@product2 = products(:two)
	end

	test "login_successful_customer" do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user1.username}")
		find('#user_password').set("MyString1")
		click_on "Login as a customer"
		click_on 'My profile'
		assert_text "Name: #{@user1.name}"
	end

	test "login_with_wrong_pass_customer" do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user1.username}")
		find('#user_password').set("123456")
		click_on "Login as a customer"
		assert_text "Log in failed, wrong username or password !!"
	end

	test "login_with_unexisting_user" do
		visit index_url
		click_on "Customer"
		find('#user_username').set("User1234")
		find('#user_password').set("MyString1")
		click_on "Login as a customer"
		assert_text "Log in failed, wrong username or password !!"
	end


	test "login_successful_store" do
		visit index_url
		click_on "Store"
		find('#store_username').set("#{@store1.username}")
		find('#store_password').set("MyString")
		click_on "Login as a store"
		assert_text "#{@store1.username}"
		assert_text "#{@store1.email}"
	end

	test "login_with_wrong_pass_store" do
		visit index_url
		click_on "Store"
		find('#store_username').set("#{@store1.username}")
		find('#store_password').set("123456")
		click_on "Login as a store"
		assert_text "Log in failed, wrong username or password !!"
	end

	test "login_with_unexisting_store" do
		visit index_url
		click_on "Store"
		find('#store_username').set("Store123")
		find('#store_password').set("MyString")
		click_on "Login as a store"
		assert_text "Log in failed, wrong username or password !!"
	end

	test 'register_with_blank_info' do
		visit index_url
		click_on "Register"
		click_on 'Customer'
		click_on 'Create User'
		assert_text "Username can't be blank"
		assert_text "Password can't be blank and Password is too short (minimum is 6 characters)"
		assert_text "Email can't be blank"
		assert_text "Name can't be blank"
		assert_text "Address can't be blank"
		assert_text "Subdistrict can't be blank"
		assert_text "District can't be blank"
		assert_text "Province can't be blank"
		assert_text "Zipcode can't be blank and Zipcode is not a number"
		assert_text "Phone Number can't be blank and Phone Number must be digits in xxx-xxx-xxxx format"
		assert_text "Gender can't be blank"
		click_on 'Store'
		click_on 'Create Store'
		assert_text "Username can't be blank"
		assert_text "Password can't be blank and Password is too short (minimum is 6 characters)"
		assert_text "Email can't be blank"
		assert_text "Address can't be blank"
		assert_text "Subdistrict can't be blank"
		assert_text "District can't be blank"
		assert_text "Province can't be blank"
		assert_text "Zipcode can't be blank and Zipcode is not a number"

	end

	test 'register_with_duplicated_username' do
		visit index_url
		click_on 'Register'
		click_on 'Customer'
		find('#user_username').set("MyString1")
		click_on 'Create User'
		assert_text 'Username has already been taken'
		click_on 'Store'
		find('#store_username').set("MyString")
		click_on 'Create Store'
		assert_text 'Username has already been taken'
		click_on 'Cancel'
		assert_text 'Register'
	end

	test 'register_with_unmatched_password' do
		visit index_url
		click_on 'Register'
		click_on 'Customer'
		find('#user_password').set('123456')
		find('#user_password_confirmation').set('654321')
		click_on 'Create User'
		assert_text "Password confirmation doesn't match Password"
		click_on 'Store'
		find('#store_password').set('123456')
		find('#store_password_confirmation').set('654321')
		click_on 'Create Store'
		assert_text "Password confirmation doesn't match Password"
	end

	test 'register_with_wrong_phone_number_format' do
		visit index_url
		click_on 'Register'
		click_on 'Customer'
		find('#user_phoneNumber').set('1234567890')
		click_on 'Create User'
		assert_text "Phone Number must be digits in xxx-xxx-xxxx format"
		find('#user_phoneNumber').set('asd-asd-asda')
		click_on 'Create User'
		assert_text "Phone Number must be digits in xxx-xxx-xxxx format"
	end

	test 'log_out' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user1.username}")
		find('#user_password').set("MyString1")
		click_on "Login as a customer"
		click_on 'My profile'
		click_on 'Logout'
		assert_selector '#user_username'
		assert_selector '#user_password'
	end

	test 'is_logged_in_feed' do
		visit feed_path(@user1.id)
		assert_text "Please login before making any action !!!"
	end

	test 'is_logged_in_profile' do
		visit user_path(@user1.id)
		assert_text "Please login before making any action !!!"
	end

	test 'is_logged_in_orders' do
		visit orders_url
		assert_text "Please login before making any action !!!"
	end


	test 'add_product_to_cart' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user1.username}")
		find('#user_password').set("MyString1")
		click_on 'Login as a customer'
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#modal_store_link').click()
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('.form-actions').click()
		assert_text 'Item added'
	end

	test 'remove_item_from_cart' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		click_on 'Shopping cart'
		click_on 'Remove'
		accept_prompt 'Are you sure?'
		assert_text "Item removed"
	end

	test 'purchase_item_from_different_store' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#modal_store_link').click()
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('.form-actions').click()
		assert_text "Please clear the cart before purchasing products from other stores."
	end

	test 'purchase_item_with_too_many_quant' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#modal_store_link').click()
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#cart_item_quantity').set("10")
		find('.form-actions').click()
		assert_text "Invalid product's quantity, please try again."
	end


	test 'purchase_item_with_negative_quant' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#modal_store_link').click()
		find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
		find('#cart_item_quantity').set("-3")
		find('.form-actions').click()
		assert_text "Invalid product's quantity, please try again."
	end

	test 'checkout_product' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		click_on 'Shopping cart'
		click_on 'Check out'
		accept_prompt 'Are you sure?'
		assert_text 'Order was successfully created.'
	end

	test 'check_product_quant_after_checking_out' do
		visit index_url
		click_on "Customer"
		find('#user_username').set("#{@user2.username}")
		find('#user_password').set("MyString2")
		click_on 'Login as a customer'
		click_on 'Shopping cart'
		click_on 'Check out'
		accept_prompt 'Are you sure?'
		assert_text 'Order was successfully created.'
		find("#tagtwo-#{@product2.store.username}-#{@product2.name}").find('.productDetails').click
		assert_equal "#{@product2.name} (stock : 0)", find('#modal_item_name').text
	end


	test "add_products_successful" do
		visit index_url
		click_on "Store"
		find('#store_username').set("#{@store1.username}")
		find('#store_password').set("MyString")
		click_on "Login as a store"
		click_on 'Add new products'
		find('#product_name').set("New Product")
		find('#product_price').set("5")
		find('#product_quantity').set("5")
		click_on 'Create Product'
		assert_text "Product was successfully created."
	end

	test "add_products_without_name_price" do
		visit index_url
		click_on "Store"
		find('#store_username').set("#{@store1.username}")
		find('#store_password').set("MyString")
		click_on "Login as a store"
		click_on 'Add new products'
		find('#product_price').set("5")
		find('#product_quantity').set("5")
		click_on 'Create Product'
		assert_text "Name can't be blank"

		find('#product_name').set("New Product")
		find('#product_price').set("")
		click_on 'Create Product'
		assert_text "Price is not a number"
	end

	test "add_products_with_neg_price_quantity" do
		visit index_url
		click_on "Store"
		find('#store_username').set("#{@store1.username}")
		find('#store_password').set("MyString")
		click_on "Login as a store"
		click_on 'Add new products'
		find('#product_name').set("New Product")
		find('#product_price').set("-155")
		find('#product_quantity').set("-5")
		click_on 'Create Product'
		assert_text "Price must be greater than or equal to 0.0"
		assert_text "Quantity must be greater than or equal to 0"
	end

	# test 'review_before_purchase_a_product' do
	# 	visit index_url
	# 	click_on "Customer"
	# 	find('#user_username').set("#{@user1.username}")
	# 	find('#user_password').set("MyString1")
	# 	click_on 'Login as a customer'
	# 	find("#tagone-#{@product1.store.username}-#{@product1.name}").find('.productDetails').click
	# 	find('#modal_store_link').click()
	# 	click_on 'Review'
	# 	page.evaluate_script("$('.reviewModal').modal('hide')")
	#	find('.btn-close').click()
	#	sleep(3)
	# 	click_on 'Review'
	# 	assert_text 'Please purchase some products from the store before making reviews.'
	# end
	# problems with turbolinks

end