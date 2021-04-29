class AddAttributesToImage < ActiveRecord::Migration[4.2]
  def change
    add_column :images, :title, :text
    add_column :images, :lonlat, :point, :geographic => true
  end
end
