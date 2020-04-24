class AddKeysToProducts < ActiveRecord::Migration[5.2]
  def change
     add_reference :products, :merchant, foreign_key: true
     add_reference :products, :sub_category, foreign_key: true
     change_column :products, :price, :decimal
  end
end
