class MakeTargetWellConnectedAndImportanceGlobalStats < ActiveRecord::Migration[5.0]
  def change
    rename_column :aichi11_targets, :well_connected_terrestrial, :well_connected_global
    remove_column :aichi11_targets, :well_connected_marine, :float

    rename_column :aichi11_targets, :importance_terrestrial, :importance_global
    remove_column :aichi11_targets, :importance_marine, :float
  end
end
