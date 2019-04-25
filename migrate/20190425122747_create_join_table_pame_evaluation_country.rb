class CreateJoinTablePameEvaluationCountry < ActiveRecord::Migration
  def change
    create_join_table :pame_evaluations, :countries do |t|
      t.index [:country_id, :pame_evaluation_id], unique: true, name: "index_pame_evaluations_countries"
    end
  end
end
