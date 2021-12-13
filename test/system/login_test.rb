require 'application_system_test_case'

class MainTest < ApplicationSystemTestCase

	setup do
		@user1 = users(:one)
		@store1 = stores(:one)
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

end