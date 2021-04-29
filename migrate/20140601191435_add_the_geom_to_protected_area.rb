class AddTheGeomToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :the_geom, :geometry
  end
end
