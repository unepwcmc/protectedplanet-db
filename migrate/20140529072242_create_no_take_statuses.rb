class CreateNoTakeStatuses < ActiveRecord::Migration[4.2]
  def change
    create_table :no_take_statuses do |t|
      t.string :name
      t.decimal :area

      t.timestamps
    end
  end
end
