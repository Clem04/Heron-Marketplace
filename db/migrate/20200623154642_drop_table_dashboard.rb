class DropTableDashboard < ActiveRecord::Migration[5.2]
   def up
    drop_table :dashboards
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
