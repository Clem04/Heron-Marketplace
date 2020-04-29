class UpdateProductsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :photo, :photo_1
    add_column :products, :photo_2, :string
    add_column :products, :photo_3, :string
    add_column :products, :photo_4, :string
  end
end
