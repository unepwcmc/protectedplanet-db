class AddGreenlistColumnToProtectedAreas < ActiveRecord::Migration
  def change
    add_column :protected_areas, :is_green_list, :boolean, default: false
  end
end
