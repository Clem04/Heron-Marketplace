class AddColumnPaymentToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :price_cents, :decimal
  	add_column :orders, :status, :string
  	add_column :orders, :token, :string
  end
end
