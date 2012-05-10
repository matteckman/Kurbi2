class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.text :description
      t.integer :symptom_category_id

      t.timestamps
    end
  end
end
