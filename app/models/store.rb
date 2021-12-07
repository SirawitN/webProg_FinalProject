class Store < ApplicationRecord
	has_secure_password
	has_many :products, dependent: :destroy

	validates :username, uniqueness: true, presence: true
	validates :password, length: {minimum: 6}
	validates :email, uniqueness: true, presence: true
	validates :address, presence: true
	validates :subDistrict, presence: true
	validates :district, presence: true
	validates :province, presence: true
	validates :zipcode, presence: true, numericality: true

	attribute :totalRatingScore, :integer, default: 0
	attribute :rateCount, :integer, default: 0
end
