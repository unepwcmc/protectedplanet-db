# This migration comes from active_storage (originally 20190112182829)
# Adds the Rails 6.0 `service_name` column that the app skipped when it upgraded
# from the Rails 5.2 ActiveStorage schema. Idempotent so it is safe on databases
# where the column already exists.
class AddServiceNameToActiveStorageBlobs < ActiveRecord::Migration[6.0]
  def up
    return if column_exists?(:active_storage_blobs, :service_name)

    add_column :active_storage_blobs, :service_name, :string

    if (configured_service = ActiveStorage::Blob.service.name)
      ActiveStorage::Blob.unscoped.update_all(service_name: configured_service)
    end

    change_column :active_storage_blobs, :service_name, :string, null: false
  end

  def down
    return unless column_exists?(:active_storage_blobs, :service_name)

    remove_column :active_storage_blobs, :service_name
  end
end
