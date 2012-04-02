class AddIndexToPeople < ActiveRecord::Migration
  def change
  	add_index :people, :patient_id
  end
end
