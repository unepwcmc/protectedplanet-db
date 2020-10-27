class AddGlUrlToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :green_list_url, :string
  end
end
