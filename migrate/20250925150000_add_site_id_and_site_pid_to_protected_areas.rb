# frozen_string_literal: true

class AddSiteIdAndSitePidToProtectedAreas < ActiveRecord::Migration[5.2]
  def up
    # Add site_id and site_pid to protected_areas table
    add_column :protected_areas, :site_id, :integer
    add_column :protected_areas, :site_pid, :text

    # Add site_id and site_pid to protected_area_parcels table
    add_column :protected_area_parcels, :site_id, :integer
    add_column :protected_area_parcels, :site_pid, :text

    # Copy data from wdpa_id to site_id and wdpa_pid to site_pid
    execute 'UPDATE protected_areas SET site_id = wdpa_id, site_pid = wdpa_pid'
    execute 'UPDATE protected_area_parcels SET site_id = wdpa_id, site_pid = wdpa_pid'

    # Add indexes for site_id
    add_index :protected_areas, :site_id, unique: true
    add_index :protected_area_parcels, :site_id

    # Add indexes for site_pid
    add_index :protected_areas, :site_pid
    add_index :protected_area_parcels, :site_pid

    # Add composite index for site_id + site_pid on parcels (for uniqueness)
    add_index :protected_area_parcels, %i[site_id site_pid], unique: true
  end

  def down
    # Remove indexes first
    remove_index :protected_areas, :site_id
    remove_index :protected_area_parcels, :site_id
    remove_index :protected_areas, :site_pid
    remove_index :protected_area_parcels, :site_pid
    remove_index :protected_area_parcels, %i[site_id site_pid]

    # Remove columns
    remove_column :protected_areas, :site_id
    remove_column :protected_areas, :site_pid
    remove_column :protected_area_parcels, :site_id
    remove_column :protected_area_parcels, :site_pid
  end
end
