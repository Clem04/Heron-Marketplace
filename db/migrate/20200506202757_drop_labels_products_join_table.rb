class DropLabelsProductsJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :labels_products
  end
end
