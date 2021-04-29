class AddColumnMetadataidToSourceTable < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :metadataid, :integer
    add_index :sources, :metadataid
  end
end
