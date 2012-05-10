class CreateSearchPhrases < ActiveRecord::Migration
  def change
    create_table :search_phrases do |t|
      t.text :phrase

      t.timestamps
    end
  end
end
