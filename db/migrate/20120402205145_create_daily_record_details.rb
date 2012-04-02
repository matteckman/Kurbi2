class CreateDailyRecordDetails < ActiveRecord::Migration
  def change
    create_table :daily_record_details do |t|
      t.integer :rank
      t.integer :predefined_symptom_id
      t.integer :daily_record_id
	  t.date :date
	  
      t.timestamps
    end
    
    add_index :daily_record_details, :predefined_symptom_id
    add_index :daily_record_details, :daily_record_id
  end
end
