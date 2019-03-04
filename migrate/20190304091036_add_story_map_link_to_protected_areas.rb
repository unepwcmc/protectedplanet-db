class AddStoryMapLinkToProtectedAreas < ActiveRecord::Migration
  def change
    add_column :protected_areas, :story_map_link, :string
  end
end
