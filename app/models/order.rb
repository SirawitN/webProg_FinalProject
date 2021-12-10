class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items, dependent: :destroy

  validates :store_id, presence: true
end
