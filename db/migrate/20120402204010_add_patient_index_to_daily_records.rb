class AddPatientIndexToDailyRecords < ActiveRecord::Migration
  def change
	add_column :daily_records, :patient_id, :integer, after: :note
	add_index :daily_records, :patient_id
  end
end
