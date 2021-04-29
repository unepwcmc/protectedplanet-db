class AddOriginalNameToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :original_name, :text
  end
end
