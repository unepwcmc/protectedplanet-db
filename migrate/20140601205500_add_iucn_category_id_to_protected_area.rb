class AddIucnCategoryIdToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :iucn_category_id, :integer
  end
end
