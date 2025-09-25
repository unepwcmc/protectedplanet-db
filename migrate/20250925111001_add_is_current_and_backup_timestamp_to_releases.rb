# frozen_string_literal: true

class AddIsCurrentAndBackupTimestampToReleases < ActiveRecord::Migration[5.2]
  def change
    # Remove the unique constraint on label to allow duplicate labels
    remove_index :releases, :label

    # Add new columns
    add_column :releases, :is_current, :boolean, default: false, null: false
    add_column :releases, :backup_timestamp, :datetime

    # Add unique constraint on is_current (only one release can be current)
    add_index :releases, :is_current, unique: true, where: 'is_current = true'
  end
end
