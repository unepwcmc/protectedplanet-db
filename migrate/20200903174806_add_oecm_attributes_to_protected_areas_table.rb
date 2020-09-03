class AddOecmAttributesToProtectedAreasTable < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :supplementary_info, :string
    add_column :protected_areas, :conservation_objectives, :string
  end
end
