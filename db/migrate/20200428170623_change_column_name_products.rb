class ChangeColumnNameProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :string, :photo
  end
end
