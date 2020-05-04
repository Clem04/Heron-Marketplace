class AddColumnsToPostsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :first_name, :string
    add_column :posts, :last_name, :string
    add_column :posts, :email, :string
    add_column :posts, :location, :string
    add_column :posts, :description, :string
    add_column :posts, :website, :string
    add_column :posts, :instagram, :string
    add_column :posts, :facebook, :string
  end
end
