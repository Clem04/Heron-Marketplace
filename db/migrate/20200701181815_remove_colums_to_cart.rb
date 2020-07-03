class RemoveColumsToCart < ActiveRecord::Migration[5.2]
  def change
  	remove_column :carts, :status
  	remove_column :carts, :line_item_sku
  	remove_column :carts, :price_cents
  	remove_column :carts, :price_currency
  	remove_column :carts, :checkout_session_id
  	remove_column :carts, :line_item_id
  	remove_column :carts, :user_id
  end
end
