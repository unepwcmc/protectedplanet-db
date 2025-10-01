# frozen_string_literal: true

class AddGreenListStatusToProtectedAreaParcels < ActiveRecord::Migration[5.2]
  def up
    add_reference :protected_area_parcels, :green_list_status,
      foreign_key: { to_table: :green_list_statuses }
    add_index :protected_area_parcels, :green_list_status_id
  end

  def down
    remove_index :protected_area_parcels, :green_list_status_id
    remove_reference :protected_area_parcels, :green_list_status
  end
end
