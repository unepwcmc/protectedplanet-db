class AddRestrictedToPameEvaluations < ActiveRecord::Migration[4.2]
  def change
    add_column :pame_evaluations, :restricted, :boolean, default: false
    add_index :pame_evaluations, :restricted
  end
end
