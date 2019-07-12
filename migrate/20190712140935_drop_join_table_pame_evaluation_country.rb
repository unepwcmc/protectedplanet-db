class DropJoinTablePameEvaluationCountry < ActiveRecord::Migration[5.0]
  def change
    drop_table :countries_pame_evaluations
  end
end
