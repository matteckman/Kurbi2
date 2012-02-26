class CreateDailyRecords < ActiveRecord::Migration
  def change
    create_table :daily_records do |t|
      t.date :date
      t.text :note

      t.timestamps
    end
  end
end
