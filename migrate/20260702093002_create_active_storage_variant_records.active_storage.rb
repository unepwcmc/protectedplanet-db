# This migration comes from active_storage (originally 20191206030411)
# Adds the Rails 6.1 variant-records table that the app skipped. Idempotent.
class CreateActiveStorageVariantRecords < ActiveRecord::Migration[6.1]
  def change
    return unless table_exists?(:active_storage_blobs)
    return if table_exists?(:active_storage_variant_records)

    create_table :active_storage_variant_records do |t|
      t.belongs_to :blob, null: false, index: false
      t.string :variation_digest, null: false
    end

    add_index :active_storage_variant_records, %i[blob_id variation_digest],
      name: 'index_active_storage_variant_records_uniqueness', unique: true
    add_foreign_key :active_storage_variant_records, :active_storage_blobs, column: :blob_id
  end
end
