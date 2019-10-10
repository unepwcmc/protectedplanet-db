class AddGlobalValuesToAichi11TargetsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :aichi11_targets, :representative_global_value, :float
    add_column :aichi11_targets, :well_connected_global_value, :float
    add_column :aichi11_targets, :importance_global_value, :float
  end
end
