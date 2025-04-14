class AddUniqueIndexToProtectedAreaParcel < ActiveRecord::Migration[5.2]
    def change
      add_index :protected_area_parcels, [:wdpa_id, :wdpa_pid], unique: true
    end
  end