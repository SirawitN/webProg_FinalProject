require 'application_system_test_case'

class MainTest < ApplicationSystemTestCase

	setup do
		@store1 = stores(:one)
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

end