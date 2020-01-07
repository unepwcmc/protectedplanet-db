class AddMarineToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :marine, :boolean
  end
end
