class AddInternationalCriteriaToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :international_criteria, :string
  end
end
