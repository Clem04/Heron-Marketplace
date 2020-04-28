class AddColumnToMerchants < ActiveRecord::Migration[5.2]
  def change
    add_column :merchants, :picture_1, :string
    add_column :merchants, :picture_2, :string
    add_column :merchants, :picture_3, :string
    add_column :merchants, :picture_4, :string
  end
end
