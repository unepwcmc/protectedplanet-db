class DropWikipediaSummaryTable < ActiveRecord::Migration[4.2]
  def change
    drop_table :wikipedia_summaries
  end
end
