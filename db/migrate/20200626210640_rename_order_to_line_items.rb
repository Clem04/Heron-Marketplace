class RenameOrderToLineItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :line_items, :order, :order_id
  end
end
