class CreateAichi11Targets < ActiveRecord::Migration
  def change
    create_table :aichi11_targets do |t|
      t.integer :country_id

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
  end
end
