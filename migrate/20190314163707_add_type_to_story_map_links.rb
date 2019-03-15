class AddTypeToStoryMapLinks < ActiveRecord::Migration
  def change
    add_column :story_map_links, :link_type, :string
  end
end
