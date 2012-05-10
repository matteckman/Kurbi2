class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :patient_id
      t.integer :search_phrase

      t.timestamps
    end
  end
end
