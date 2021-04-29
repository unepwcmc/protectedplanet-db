class AddUnaccentExtension < ActiveRecord::Migration[4.2]
  def change
    enable_extension 'unaccent'
  end
end
