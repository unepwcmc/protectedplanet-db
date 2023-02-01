class AddHasParccInfoToProtectedAreasTable < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :has_parcc_info, :boolean, default: false
  end
end
