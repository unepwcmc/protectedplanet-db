class AddGreenlistColumnToProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :is_green_list, :boolean, default: false
  end
end
