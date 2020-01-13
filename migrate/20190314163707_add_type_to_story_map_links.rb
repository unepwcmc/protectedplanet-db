class AddTypeToStoryMapLinks < ActiveRecord::Migration[4.2]
  def change
    add_column :story_map_links, :link_type, :string
  end
end
