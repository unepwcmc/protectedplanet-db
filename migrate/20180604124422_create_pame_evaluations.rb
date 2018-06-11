class CreatePameEvaluations < ActiveRecord::Migration
  def change
    create_table :pame_evaluations do |t|
      t.references :protected_area
      t.string :method
      t.integer :year

      t.timestamps null: false
    end
  end
end
