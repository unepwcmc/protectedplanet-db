class CreateHistoricWdpaReleases < ActiveRecord::Migration

  def change
    create_table :comfy_cms_historic_wdpa_releases do |t|
      t.string :url
      t.integer :month
      t.integer :year
      t.timestamps
    end
  end

end