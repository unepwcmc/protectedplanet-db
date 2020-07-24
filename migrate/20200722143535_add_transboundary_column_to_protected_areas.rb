class AddTransboundaryColumnToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :is_transboundary, :boolean, default: false
  end
end
