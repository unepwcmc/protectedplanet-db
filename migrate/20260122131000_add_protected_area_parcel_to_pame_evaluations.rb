# frozen_string_literal: true

class AddProtectedAreaParcelToPameEvaluations < ActiveRecord::Migration[5.2]
  def up
    add_column :pame_evaluations, :protected_area_parcel_id, :integer
    add_index :pame_evaluations, :protected_area_parcel_id

    ActiveRecord::Base.connection.execute(<<-SQL)
      ALTER TABLE pame_evaluations
      ADD CONSTRAINT pame_evaluations_area_xor
      CHECK ((protected_area_id IS NULL) <> (protected_area_parcel_id IS NULL))
      NOT VALID;
    SQL
  end

  def down
    ActiveRecord::Base.connection.execute(<<-SQL)
      ALTER TABLE pame_evaluations
      DROP CONSTRAINT IF EXISTS pame_evaluations_area_xor;
    SQL

    remove_index :pame_evaluations, :protected_area_parcel_id
    remove_column :pame_evaluations, :protected_area_parcel_id
  end
end
