class CreateStoryMapLinks < ActiveRecord::Migration[4.2]
  def change
    create_table :story_map_links do |t|
      t.references :protected_area
      t.string :link

      t.timestamps
    end
    remove_column :protected_areas, :story_map_link, :string
  end
end
