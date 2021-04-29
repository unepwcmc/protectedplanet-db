class AddLegalStatusUpdatedAtToProtectedArea < ActiveRecord::Migration[4.2]
  def change
    add_column :protected_areas, :legal_status_updated_at, :datetime
  end
end
