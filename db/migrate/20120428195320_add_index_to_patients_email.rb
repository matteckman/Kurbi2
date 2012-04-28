class AddIndexToPatientsEmail < ActiveRecord::Migration
  def change
  	add_index :patients, :email, unique: true
  	add_index :patients, :username, unique: true
  	add_index :patients, :social_security, unique: true
  end
end
