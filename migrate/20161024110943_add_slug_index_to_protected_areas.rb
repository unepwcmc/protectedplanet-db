class AddSlugIndexToProtectedAreas < ActiveRecord::Migration
  def change
    add_index :protected_areas, :slug
  end
end
