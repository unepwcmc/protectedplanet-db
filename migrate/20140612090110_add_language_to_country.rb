class AddLanguageToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :language, :string
  end
end
