class AddAssessmentIsPublicToPameEvaluations < ActiveRecord::Migration[4.2]
  def change
    add_column :pame_evaluations, :assessment_is_public, :boolean, default: false
    add_index :pame_evaluations, :assessment_is_public
  end
end
