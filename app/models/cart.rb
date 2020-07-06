class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product_variant)
    current_item = line_items.find_by(product_variant_id: product_variant.first.id)

    if current_item
      current_item.increment(:quantity)
      current_item.save
    else
      current_item = LineItem.new(product_variant_id: product_variant.first.id)
      current_item.cart = self
      current_item.save
    end
    current_item
  end

  def total_cart_price
    line_items.to_a.sum { |item| item.total_price }
  end

  # monetize :amount_cents
end
