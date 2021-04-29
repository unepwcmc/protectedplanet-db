class AddSlugColumnToProtectedAreasTable < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :slug, :text
  end
end
