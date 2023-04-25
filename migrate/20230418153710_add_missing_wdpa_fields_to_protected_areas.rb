class AddMissingWdpaFieldsToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :marine_type, :integer
    add_column :protected_areas, :verif, :string
    add_column :protected_areas, :parent_iso3, :string
  end
end
