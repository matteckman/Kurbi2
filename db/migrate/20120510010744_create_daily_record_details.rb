class CreateDailyRecordDetails < ActiveRecord::Migration
  def change
    create_table :daily_record_details do |t|
      t.integer :severity
      t.integer :symptom_id
      t.integer :daily_record_id

      t.timestamps
    end
  end
end
