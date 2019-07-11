class AddVisibleToPameEvaluations < ActiveRecord::Migration
  def change
    add_column :pame_evaluations, :visible, :bool, null: false, default: false
  end
end
