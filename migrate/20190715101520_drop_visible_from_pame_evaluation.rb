class DropVisibleFromPameEvaluation < ActiveRecord::Migration[5.0]
  def change
    remove_column :pame_evaluations, :visible
  end
end
