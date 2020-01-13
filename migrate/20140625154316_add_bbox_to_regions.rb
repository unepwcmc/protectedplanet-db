class AddBboxToRegions < ActiveRecord::Migration[4.2]
  def change
    add_column :regions, :bounding_box, :geometry
  end
end
