class DropLegacyProtectedAreas < ActiveRecord::Migration[5.2]
  def change
    drop_table :legacy_protected_areas
  end
end
