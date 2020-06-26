class LineItem < ApplicationRecord
  belongs_to :product_variant
  belongs_to :cart

  def total_price
    product_variant.product.price_cents.to_i * quantity.to_i
  end
end
