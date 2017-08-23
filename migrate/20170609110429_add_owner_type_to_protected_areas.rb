class AddOwnerTypeToProtectedAreas < ActiveRecord::Migration
  def change
    add_column :protected_areas, :owner_type, :text
  end
end
