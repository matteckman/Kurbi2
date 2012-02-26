class CreateDiseaseProfiles < ActiveRecord::Migration
  def change
    create_table :disease_profiles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
