# frozen_string_literal: true

class UpdatePameFieldsToPameEvaluations < ActiveRecord::Migration[5.2]
  def change
    rename_column :pame_evaluations, :methodology, :method
    rename_column :pame_evaluations, :year, :asmt_year
    rename_column :pame_evaluations, :url, :asmt_url
    rename_column :pame_evaluations, :metadata_id, :eff_metaid

    remove_column :pame_evaluations, :wdpa_id, :integer
    remove_column :pame_evaluations, :assessment_is_public, :boolean
    remove_column :pame_evaluations, :restricted, :boolean

    add_column :pame_evaluations, :site_id, :integer
    add_column :pame_evaluations, :site_pid, :string
    add_column :pame_evaluations, :asmt_id, :integer
    add_column :pame_evaluations, :submit_year, :integer
    add_column :pame_evaluations, :verif_eff, :string
    add_column :pame_evaluations, :info_url, :string
    add_column :pame_evaluations, :gov_act, :string
    add_column :pame_evaluations, :gov_asmt, :string
    add_column :pame_evaluations, :dp_bio, :string
    add_column :pame_evaluations, :dp_other, :string
    add_column :pame_evaluations, :mgmt_obset, :string
    add_column :pame_evaluations, :mgmt_obman, :string
    add_column :pame_evaluations, :mgmt_adapt, :string
    add_column :pame_evaluations, :mgmt_staff, :string
    add_column :pame_evaluations, :mgmt_budgt, :string
    add_column :pame_evaluations, :mgmt_thrts, :string
    add_column :pame_evaluations, :mgmt_mon, :string
    add_column :pame_evaluations, :out_bio, :string

    reversible do |dir|
      dir.up do
        # Backfill site_id and site_pid from existing protected area / parcel links
        execute <<~SQL
          UPDATE pame_evaluations AS pame
          SET
            site_id  = pa.site_id,
            site_pid = COALESCE(pa.site_pid::text, pa.site_id::text)
          FROM protected_areas AS pa
          WHERE pame.protected_area_id = pa.id
            AND pame.site_id IS NULL;
        SQL
        # Initialise asmt_id with the current primary key so every existing record has a stable assessment id
        execute <<~SQL
          UPDATE pame_evaluations
          SET asmt_id = id;
        SQL
      end
    end
  end
end
