class CreateProtectedAreas < ActiveRecord::Migration[4.2]
  def change
    create_table :protected_areas do |t|

      t.timestamps
    end
  end
end
