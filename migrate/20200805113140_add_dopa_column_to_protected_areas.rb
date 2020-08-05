class AddDopaColumnToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :is_dopa, :boolean, default: false
  end
end
