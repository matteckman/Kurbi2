class CreatePredefinedSymptoms < ActiveRecord::Migration
  def change
    create_table :predefined_symptoms do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
