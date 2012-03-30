class AddOtherMedicationsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :other_medications, :text, after: :medications
  end
end
