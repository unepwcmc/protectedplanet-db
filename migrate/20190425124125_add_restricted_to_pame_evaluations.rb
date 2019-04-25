class AddRestrictedToPameEvaluations < ActiveRecord::Migration
  def change
    add_column :pame_evaluations, :restricted, :boolean, default: false
    add_index :pame_evaluations, :restricted
  end
end
