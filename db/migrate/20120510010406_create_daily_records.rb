class CreateDailyRecords < ActiveRecord::Migration
  def change
    create_table :daily_records do |t|
      t.integer :wellness_score
      t.text :note
      t.integer :day_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
