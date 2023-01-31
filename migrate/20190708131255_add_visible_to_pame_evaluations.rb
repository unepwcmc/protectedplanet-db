class AddVisibleToPameEvaluations < ActiveRecord::Migration[4.2]
  def change
    add_column :pame_evaluations, :visible, :bool, null: false, default: false
  end
end
