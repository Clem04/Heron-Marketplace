class CreateMerchants < ActiveRecord::Migration[5.2]
  def change
    create_table :merchants do |t|

      t.string :name
      t.string :public_email
      t.string :location
      t.text :description
      t.string :comment
      t.string :facebook
      t.string :instagram
      t.string :website

      t.timestamps
    end
  end
end
