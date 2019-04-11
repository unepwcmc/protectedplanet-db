class AddSourceRefToPameEvaluations < ActiveRecord::Migration
  def change
    add_reference :pame_evaluations, :pame_source, foreign_key: true
  end
end
