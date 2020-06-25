class CreateMerchantOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :merchant_orders do |t|
      t.references :merchant, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
