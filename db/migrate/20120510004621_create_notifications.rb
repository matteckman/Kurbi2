class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :message_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
