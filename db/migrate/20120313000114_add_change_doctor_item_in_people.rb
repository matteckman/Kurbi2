class AddChangeDoctorItemInPeople < ActiveRecord::Migration
  def change
  	add_column :people, :primary_physician,  :string
   
  	remove_column :people, :doctor 
  end
end
