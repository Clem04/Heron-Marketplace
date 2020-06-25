class AddColumnLineItemToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_reference :orders, :line_item
  end
end
