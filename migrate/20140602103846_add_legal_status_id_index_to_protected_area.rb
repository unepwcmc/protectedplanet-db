class AddLegalStatusIdIndexToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_index :protected_areas, :legal_status_id
  end
end
