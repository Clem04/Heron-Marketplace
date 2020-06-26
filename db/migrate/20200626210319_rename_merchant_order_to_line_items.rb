class RenameMerchantOrderToLineItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :line_items, :merchant_order_id, :order
  end
end
