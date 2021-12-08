class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  attribute :quantity, :integer, default: 1

  def unit_price
    return product.price
  end
  def subtotal
    return product.price * quantity
  end
end
