class RemoveColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
  	remove_column :orders, :line_item_id
  	remove_column :orders, :line_item_sku
  end
end
