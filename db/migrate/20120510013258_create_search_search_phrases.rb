class CreateSearchSearchPhrases < ActiveRecord::Migration
  def change
    create_table :search_search_phrases do |t|
      t.integer :search_id
      t.integer :search_phrase_id

      t.timestamps
    end
  end
end
