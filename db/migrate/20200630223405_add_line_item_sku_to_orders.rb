class AddLineItemSkuToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :line_item_sku, :string
  end
end
