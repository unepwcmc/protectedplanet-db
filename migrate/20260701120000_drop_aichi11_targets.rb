class DropAichi11Targets < ActiveRecord::Migration[5.2]
  def up
    execute 'DROP VIEW IF EXISTS aichi11_target_dashboard_view'
    drop_table :aichi11_targets if table_exists?(:aichi11_targets)
  end

  def down
    create_table :aichi11_targets do |t|
      t.integer :singleton_guard, default: 0, null: false

      t.float :coverage_terrestrial
      t.float :coverage_marine
      t.float :effectively_managed_terrestrial
      t.float :effectively_managed_marine
      t.float :representative_global
      t.float :well_connected_global
      t.float :importance_global
      t.float :representative_global_value
      t.float :well_connected_global_value
      t.float :importance_global_value

      t.timestamps
    end

    add_index :aichi11_targets, :singleton_guard, unique: true
  end
end
