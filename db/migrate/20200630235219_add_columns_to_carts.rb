class AddColumnsToCarts < ActiveRecord::Migration[5.2]
  def change
  	add_column :carts, :line_item_sku, :string
  	add_monetize :carts, :price
  	add_column :carts, :checkout_session_id, :string
  	add_reference :carts, :line_item, foreign_key: true
  	add_reference :carts, :user, foreign_key: true
  end
end
