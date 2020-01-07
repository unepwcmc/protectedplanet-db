class AddBboxToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :bounding_box, :geometry
  end
end
