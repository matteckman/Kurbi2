class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :patient_id

      t.timestamps
    end
  end
end
