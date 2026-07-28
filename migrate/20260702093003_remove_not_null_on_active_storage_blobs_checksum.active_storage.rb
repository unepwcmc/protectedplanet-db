# This migration comes from active_storage (originally 20211119233751)
# Rails 6.1 made blob checksum nullable (for direct uploads of unknown content).
class RemoveNotNullOnActiveStorageBlobsChecksum < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:active_storage_blobs, :checksum, true)
  end
end
