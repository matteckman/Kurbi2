class CreateActionConfirmations < ActiveRecord::Migration
  def change
    create_table :action_confirmations do |t|
      t.integer :patient_id
      t.integer :action_id

      t.timestamps
    end
  end
end
