class DropChangesTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :changes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
