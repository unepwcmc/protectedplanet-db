class AddColumnUpdateYearToSourceTable < ActiveRecord::Migration[5.2]
  def change
    add_column :sources, :update_year, :year
  end
end