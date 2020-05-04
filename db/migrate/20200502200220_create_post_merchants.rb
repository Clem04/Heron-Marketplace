class CreatePostMerchants < ActiveRecord::Migration[5.2]
  def change
    create_table :post_merchants do |t|
      t.references :merchant, foreign_key: true
      t.references :category, foreign_key: true
      t.references :label, foreign_key: true

      t.timestamps
    end
  end
end
