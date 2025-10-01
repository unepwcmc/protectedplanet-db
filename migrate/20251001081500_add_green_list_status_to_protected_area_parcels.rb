# frozen_string_literal: true

class AddGreenListStatusToProtectedAreaParcels < ActiveRecord::Migration[5.2]
  def change
    add_reference :protected_area_parcels, :green_list_status, foreign_key: true
  end
end
