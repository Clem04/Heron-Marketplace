class LineItem < ApplicationRecord
  belongs_to :product_variant
  belongs_to :cart

  def total_price
    product_variant.product.price.to_i * quantity.to_i
  end
end
