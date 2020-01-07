class DropVisibleFromPameEvaluation < ActiveRecord::Migration[4.2]
  def change
    remove_column :pame_evaluations, :visible
  end
end
