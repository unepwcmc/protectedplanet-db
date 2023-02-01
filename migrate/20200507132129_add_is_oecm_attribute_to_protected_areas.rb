class AddIsOecmAttributeToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :is_oecm, :boolean, default: false, null: false
  end
end
