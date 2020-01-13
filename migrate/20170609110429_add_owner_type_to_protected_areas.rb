class AddOwnerTypeToProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :owner_type, :text
  end
end
