class CreateSeverities < ActiveRecord::Migration
  def change
    create_table :severities do |t|
      t.integer :rank
      t.date :date

      t.timestamps
    end
  end
end
