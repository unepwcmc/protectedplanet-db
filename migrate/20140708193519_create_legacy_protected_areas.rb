class CreateLegacyProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    create_table :legacy_protected_areas do |t|
      t.integer :wdpa_id
      t.text :slug

      t.timestamps
    end
  end
end
