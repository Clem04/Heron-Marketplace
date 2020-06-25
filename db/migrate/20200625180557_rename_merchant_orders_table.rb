class RenameMerchantOrdersTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :merchant_orders, :orders
  end
end
