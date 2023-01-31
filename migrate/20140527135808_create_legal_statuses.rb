class CreateLegalStatuses < ActiveRecord::Migration[4.2]
  def change
    create_table :legal_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
