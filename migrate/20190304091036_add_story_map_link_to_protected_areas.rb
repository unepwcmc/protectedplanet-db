class AddStoryMapLinkToProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :story_map_link, :string
  end
end
