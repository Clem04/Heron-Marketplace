class AddColumnToLabel < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :name, :string
  end
end
