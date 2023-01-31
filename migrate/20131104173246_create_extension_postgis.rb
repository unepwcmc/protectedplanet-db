class CreateExtensionPostgis < ActiveRecord::Migration[4.2]
  def change
    enable_extension 'postgis'
  end
end
