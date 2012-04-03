class AddOtherMedicationsToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :other_medications, :string, after: :medications
  end
end
