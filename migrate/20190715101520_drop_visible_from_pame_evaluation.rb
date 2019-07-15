class DropVisibleFromPameEvaluation < ActiveRecord::Migration
  def change
    remove_column :pame_evaluations, :visible
  end
end
