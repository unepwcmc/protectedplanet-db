class CreatePameEvaluations < ActiveRecord::Migration[4.2]
  def change
    create_table :pame_evaluations do |t|
      t.references :protected_area
      t.string :method
      t.integer :year

      t.timestamps null: false
    end
  end
end
