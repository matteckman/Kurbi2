class AddPatientIndexToSurveys < ActiveRecord::Migration
  def change
  	add_column :surveys, :patient_id, :integer, after: :id
	add_index :surveys, :patient_id
  end
end
