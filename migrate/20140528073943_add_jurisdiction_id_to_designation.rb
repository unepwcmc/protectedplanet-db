class AddJurisdictionIdToDesignation < ActiveRecord::Migration[4.2]
  def change
    add_column :designations, :jurisdiction_id, :integer
    add_index :designations, :jurisdiction_id
  end
end
