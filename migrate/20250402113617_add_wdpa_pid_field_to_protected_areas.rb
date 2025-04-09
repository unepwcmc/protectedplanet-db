class AddWdpaPidFieldToProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :protected_areas, :wdpa_pid, :text
  end
end
