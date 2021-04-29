class AddTheGeomLongitudeToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :the_geom_longitude, :string
  end
end
