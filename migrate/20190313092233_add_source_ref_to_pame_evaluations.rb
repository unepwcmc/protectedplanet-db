class AddSourceRefToPameEvaluations < ActiveRecord::Migration[4.2]
  def change
    add_reference :pame_evaluations, :pame_source, foreign_key: true
  end
end
