class AddGlUrlToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    # Link for GL sites only that goes to the equivalent site on the IUCN website
    add_column :protected_areas, :green_list_url, :string
  end
end
