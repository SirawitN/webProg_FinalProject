require 'application_system_test_case'

class MainTest < ApplicationSystemTestCase


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

end