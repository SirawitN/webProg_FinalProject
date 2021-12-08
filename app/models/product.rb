class Product < ApplicationRecord
  belongs_to :store
  has_one_attached :picture

  has_many :cart_items
  has_many :carts, through: :cart_items

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.00 }

  acts_as_taggable_on :tags

  def thumb
    if !self.picture.attached?
      return
    end
    return self.picture.variant(resize: '138x143.2').processed
  end

  def banner
    if !self.picture.attached?
      return
    end
    return self.picture.variant(resize: '249x268.8').processed
  end

end
