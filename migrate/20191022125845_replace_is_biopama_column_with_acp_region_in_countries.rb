class ReplaceIsBiopamaColumnWithAcpRegionInCountries < ActiveRecord::Migration[5.0]
  def change
    remove_column :countries, :is_biopama, :boolean
    add_column :countries, :acp_region, :string
  end
end
