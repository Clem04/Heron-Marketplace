class CreateJoinTableLabelProduct < ActiveRecord::Migration[5.2]
  def change
    create_join_table :labels, :products do |t|
      t.index [:label_id, :product_id]
      t.index [:product_id, :label_id]
    end
  end
end
