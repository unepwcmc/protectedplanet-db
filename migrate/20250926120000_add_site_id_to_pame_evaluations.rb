# frozen_string_literal: true

class AddSiteIdToPameEvaluations < ActiveRecord::Migration[5.2]
  def up
    # Add site_id to pame_evaluations table
    add_column :pame_evaluations, :site_id, :integer, default: 0, null: false

    # Copy data from wdpa_id to site_id
    execute 'UPDATE pame_evaluations SET site_id = wdpa_id'

    # Add index for site_id
    add_index :pame_evaluations, :site_id

    # Add composite index for site_id + name (for uniqueness if needed)
    add_index :pame_evaluations, %i[site_id name]
  end

  def down
    # Remove indexes first
    remove_index :pame_evaluations, %i[site_id name]
    remove_index :pame_evaluations, :site_id

    # Remove column
    remove_column :pame_evaluations, :site_id
  end
end
