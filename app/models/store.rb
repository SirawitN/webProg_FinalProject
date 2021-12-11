class Store < ApplicationRecord
	has_secure_password
	has_one_attached :picture
	has_many :products, dependent: :destroy
	has_many :follows
	has_many :users, through: :follows
	has_many :reviews

	validates :username, uniqueness: true, presence: true
	validates :password, length: {minimum: 6}
	validates :email, uniqueness: true, presence: true
	validates :address, presence: true
	validates :subDistrict, presence: true
	validates :district, presence: true
	validates :province, presence: true
	validates :zipcode, presence: true, numericality: true


	def show_products
		products = Hash.new
		self.products.tag_counts.order(taggings_count: :desc).limit(5).each do |tag|
			t = tag.name
			products["#{t}"] = self.products.tagged_with(t)
		end
		return products
	end

	def set_rating
		self.rating = self.reviews.average(:score).to_f.round(1)
		self.save
	end

	def avatar
		if !self.picture.attached?
			return
		end
		return self.picture.variant(resize: '200x200').processed
	end
end
