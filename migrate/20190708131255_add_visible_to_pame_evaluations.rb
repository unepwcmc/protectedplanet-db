class AddVisibleToPameEvaluations < ActiveRecord::Migration[5.0]
  def change
    add_column :pame_evaluations, :visible, :bool
  end
end
