class RenamePameEvaluationsAttribute < ActiveRecord::Migration
  def change
    rename_column :pame_evaluations, :method, :methodology
  end
end
