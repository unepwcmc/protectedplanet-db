class RenamePameEvaluationsAttribute < ActiveRecord::Migration[4.2]
  def change
    rename_column :pame_evaluations, :method, :methodology
  end
end
