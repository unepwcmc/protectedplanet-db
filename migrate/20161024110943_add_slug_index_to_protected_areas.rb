class AddSlugIndexToProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :slug
  end
end
