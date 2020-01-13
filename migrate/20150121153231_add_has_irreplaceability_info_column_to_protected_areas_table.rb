class AddHasIrreplaceabilityInfoColumnToProtectedAreasTable < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :has_irreplaceability_info, :boolean, default: false
  end
end
