class AddProductVariantsToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :product_variant, foreign_key: true
  end
end
