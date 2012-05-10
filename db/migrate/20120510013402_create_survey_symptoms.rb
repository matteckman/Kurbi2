class CreateSurveySymptoms < ActiveRecord::Migration
  def change
    create_table :survey_symptoms do |t|
      t.integer :survey_id
      t.integer :symptom_id

      t.timestamps
    end
  end
end
