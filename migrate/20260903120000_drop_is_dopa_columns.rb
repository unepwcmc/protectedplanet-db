class DropIsDopaColumns < ActiveRecord::Migration[8.0]
  # Wdpa::DopaImporter, the only writer of is_dopa, was already broken (its
  # DOPA_LIST CSV never existed) and has been removed, so the column has been
  # dead weight -- always its default false -- since before this migration.
  # ProtectedAreaPresenter#dopa_link (the only reader) is removed alongside this.
  def up
    remove_column :protected_areas, :is_dopa, :boolean, default: false
    remove_column :protected_area_parcels, :is_dopa, :boolean, default: false
  end

  def down
    add_column :protected_areas, :is_dopa, :boolean, default: false
    add_column :protected_area_parcels, :is_dopa, :boolean, default: false
  end
end
