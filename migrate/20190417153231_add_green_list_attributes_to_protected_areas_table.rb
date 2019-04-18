class AddGreenListAttributesToProtectedAreasTable < ActiveRecord::Migration
  def change
    add_column :protected_areas, :green_list_status, :string
    add_column :protected_areas, :green_list_status_date, :string
  end
end
