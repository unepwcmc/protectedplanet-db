class RemoveResponsibleEmailFromSources < ActiveRecord::Migration[5.2]
  def change
    remove_column :sources, :responsible_email, :string
  end
end
