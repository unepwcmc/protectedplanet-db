class CreateGreenListStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :green_list_statuses do |t|
      t.string :status
      t.date :expiry_date
      
      t.timestamps
    end

    add_reference :protected_areas, :green_list_status, foreign_key: true
    remove_column :protected_areas, :is_green_list, :boolean
  end
end
