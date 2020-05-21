class RemovePhotoFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :photo_1
    remove_column :products, :photo_2
    remove_column :products, :photo_3
    remove_column :products, :photo_4
  end
end
