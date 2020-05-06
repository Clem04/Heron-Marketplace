class CreateLabelProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :label_products do |t|
      t.references :product, foreign_key: true
      t.references :label, foreign_key: true
      t.timestamps
    end
  end
end
