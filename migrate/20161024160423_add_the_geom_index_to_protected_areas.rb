class AddTheGeomIndexToProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :the_geom, using: 'GIST'
  end
end
