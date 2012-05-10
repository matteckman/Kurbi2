class CreatePatientPatientGroups < ActiveRecord::Migration
  def change
    create_table :patient_patient_groups do |t|
      t.integer :patient_id
      t.integer :patient_group_id

      t.timestamps
    end
  end
end
