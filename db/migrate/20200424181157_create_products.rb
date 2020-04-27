class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.string :name
      t.text :description
      t.string :string
      t.integer :price
      t.integer :score
      t.string :currency
      t.string :status
      t.timestamps
    end
  end
end
