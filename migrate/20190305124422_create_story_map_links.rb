class CreateStoryMapLinks < ActiveRecord::Migration
  def change
    create_table :story_map_links do |t|
      t.integer :wdpa_id
      t.string :link

      t.timestamps
    end
    remove_column :protected_areas, :story_map_link, :string
  end
end
