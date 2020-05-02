class DropPostMerchants < ActiveRecord::Migration[5.2]
  def up
    drop_table :post_merchants
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
