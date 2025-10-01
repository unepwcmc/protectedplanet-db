# frozen_string_literal: true

class RemoveSiteIdFromPameEvaluations < ActiveRecord::Migration[5.2]
  def up
    # Remove index first
    remove_index :pame_evaluations, :site_id if index_exists?(:pame_evaluations, :site_id)
    remove_index :pame_evaluations, %i[site_id name] if index_exists?(:pame_evaluations, %i[site_id name])
    
    # Remove the site_id column
    remove_column :pame_evaluations, :site_id
  end

  def down
    # Add the column back
    add_column :pame_evaluations, :site_id, :integer, default: 0, null: false
    
    # Add indexes back
    add_index :pame_evaluations, :site_id
    add_index :pame_evaluations, %i[site_id name]
  end
end
