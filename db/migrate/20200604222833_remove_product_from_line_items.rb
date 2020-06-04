class RemoveProductFromLineItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :line_items, :product_id
  end
end
