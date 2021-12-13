require 'application_system_test_case'

class MainTest < ApplicationSystemTestCase

	setup do
		@user1 = users(:one)
		@user2 = users(:two)
		@product1 = products(:one)
		@product2 = products(:two)
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
	# problems with turbolinks, can't find the element 

end