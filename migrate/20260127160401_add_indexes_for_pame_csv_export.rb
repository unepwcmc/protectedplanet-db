class AddIndexesForPameCsvExport < ActiveRecord::Migration[5.2]
  def change
    add_index :pame_evaluations, :protected_area_id
    add_index :pame_evaluations, :pame_source_id
    add_index :pame_evaluations, :asmt_year
    add_index :pame_evaluations, :asmt_id
    add_index :pame_evaluations, :submit_year
  end
end

