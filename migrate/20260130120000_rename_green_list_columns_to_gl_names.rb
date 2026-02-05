# frozen_string_literal: true

class RenameGreenListColumnsToGlNames < ActiveRecord::Migration[5.2]
  def change
    # green_list_statuses: align column names with portal view (gl_status, gl_expiry)
    rename_column :green_list_statuses, :status, :gl_status
    rename_column :green_list_statuses, :expiry_date, :gl_expiry

    # Move gl_link to green_list_statuses (single source of truth)
    add_column :green_list_statuses, :gl_link, :string

    # Copy link values from protected_areas to green_list_statuses
    reversible do |dir|
      dir.up do
        execute <<-SQL.squish
          UPDATE green_list_statuses gls
          SET gl_link = pa.green_list_url
          FROM protected_areas pa
          WHERE pa.green_list_status_id = gls.id AND pa.green_list_url IS NOT NULL
        SQL
      end
    end

    # Remove gl_link from protected_areas and protected_area_parcels
    remove_column :protected_areas, :green_list_url, :string
    remove_column :protected_area_parcels, :green_list_url, :string
  end
end
