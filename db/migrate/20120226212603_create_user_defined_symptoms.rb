class CreateUserDefinedSymptoms < ActiveRecord::Migration
  def change
    create_table :user_defined_symptoms do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
