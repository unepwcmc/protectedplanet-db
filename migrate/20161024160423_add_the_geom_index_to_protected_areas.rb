class AddTheGeomIndexToProtectedAreas < ActiveRecord::Migration
  def change
    add_index :protected_areas, :the_geom, using: 'GIST'
  end
end
