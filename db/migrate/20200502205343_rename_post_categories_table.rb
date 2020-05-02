class RenamePostCategoriesTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :post_categories, :post_labels
  end
end
