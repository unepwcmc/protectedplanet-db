class AddRegionIdToCountries < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :region_id, :integer
  end
end
