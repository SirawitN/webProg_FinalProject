class Cart < ApplicationRecord
  belongs_to :user

  has_many :cart_items, dependent: :destroy
  has_many :items, through: :cart_items

  def add_product(product)
    current_item = cart_items.find_by(product_id: product.id)

    if current_item
        current_item.increment(:quantity)
    else
        current_item = cart_items.build(product_id: product.id)
    end
    return current_item
  end

  def total
      return cart_items.collect{|cart_item| cart_item.subtotal}.sum
  end
end
