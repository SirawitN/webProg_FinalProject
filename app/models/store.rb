class Store < ApplicationRecord
	has_secure_password
	has_many :products, dependent: :destroy
	has_many :follows
	has_many :users, through: :follows

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


	def show_products
		products = Hash.new
		self.products.tag_counts.order(taggings_count: :desc).limit(5).each do |tag|
			t = tag.name
			products["#{t}"] = self.products.tagged_with(t)
		end
		return products
	end
end
