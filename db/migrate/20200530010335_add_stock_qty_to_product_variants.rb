class AddStockQtyToProductVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :product_variants, :stock_qty, :integer
  end
end
