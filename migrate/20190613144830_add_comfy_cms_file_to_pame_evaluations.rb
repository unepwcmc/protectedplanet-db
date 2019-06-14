class AddComfyCmsFileToPameEvaluations < ActiveRecord::Migration
  def change
    add_reference :pame_evaluations, :comfy_cms_file, foreign_key: true
    add_index :pame_evaluations, :comfy_cms_file_id
  end
end
