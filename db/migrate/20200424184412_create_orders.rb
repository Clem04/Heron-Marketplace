class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :points_used
      t.decimal :points_earned
      t.decimal :price_before_reduction
      t.decimal :final_price_before_taxes
      t.decimal :final_price_with_taxes
      t.string :status
      t.timestamps
    end
  end
end
