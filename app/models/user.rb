class User < ApplicationRecord
	has_secure_password

	validates :username, uniqueness: true, presence: true
	validates :password, length: {minimum: 6}
	validates :email, uniqueness: true, presence: true
	validates :name, presence: true
	validates :address, presence: true
	validates :subDistrict, presence: true
	validates :district, presence: true
	validates :province, presence: true
	validates :zipcode, presence: true, numericality: true
	validates :phoneNumber, presence: true, format: {with: /\d{3}-\d{3}-\d{4}\z/, message: "must be digits in xxx-xxx-xxxx format"}
	validates :gender, presence: true
end
