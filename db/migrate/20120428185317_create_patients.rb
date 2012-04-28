class CreatePatients < ActiveRecord::Migration
  def change
  	create_table :patients do |t|
  	  t.string   :first_name
  	  t.string   :last_name
  	  t.string   :username
  	  t.string   :email
  	  t.string   :social_security
  	  t.date     :birthday
  	  t.string   :location
  	  t.string   :race
  	  t.string   :sex
  	  t.text     :bio	
  	  t.string   :first_occurrence
  	  t.string   :year_diagnosed
  	  t.string   :condition
  	  t.string   :primary_physician
  	  t.string   :medications
  	  t.text     :other_medications
  	  t.string   :photo_file_name
  	  t.string   :photo_content_type
  	  t.integer  :photo_file_size
  	  t.datetime :photo_updated_at
  	  t.string   :password_digest
  	  t.string   :auth_token
  	  t.string   :password_reset_token
  	  t.datetime :password_reset_sent_at
  	   	
  	  t.timestamps
  	end
  end	  
end
