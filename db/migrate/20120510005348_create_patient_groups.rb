class CreatePatientGroups < ActiveRecord::Migration
  def change
    create_table :patient_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
