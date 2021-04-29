class CreateAichi11Targets < ActiveRecord::Migration[4.2]
  def change
    create_table :aichi11_targets do |t|
      t.integer :singleton_guard, default: 0, null: false

      t.float :coverage_terrestrial
      t.float :coverage_marine
      t.float :effectively_managed_terrestrial
      t.float :effectively_managed_marine
      t.float :representative_terrestrial
      t.float :representative_marine
      t.float :well_connected_terrestrial
      t.float :well_connected_marine
      t.float :importance_terrestrial
      t.float :importance_marine

      t.timestamps
    end
    add_index :aichi11_targets, :singleton_guard, :unique => true
  end
end
