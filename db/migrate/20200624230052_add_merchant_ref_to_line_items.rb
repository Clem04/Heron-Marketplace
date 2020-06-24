class AddMerchantRefToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :merchant_order, foreign_key: true
  end
end
