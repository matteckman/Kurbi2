class CreatePatientSymptomSearches < ActiveRecord::Migration
  def change
    create_table :patient_symptom_searches do |t|

      t.timestamps
    end
  end
end
