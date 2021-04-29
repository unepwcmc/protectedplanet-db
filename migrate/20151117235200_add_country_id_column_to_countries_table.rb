class AddCountryIdColumnToCountriesTable < ActiveRecord::Migration[4.2]
  def change
    add_column :countries, :country_id, :integer
  end
end
