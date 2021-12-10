class OrderItem < ApplicationRecord
  belongs_to :order
  validates :product_id, presence: true
end
