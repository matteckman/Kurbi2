class RevisePasswordAttributesToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :password_digest,  :string
   
  	remove_column :patients, :password_hash 
  	remove_column :patients, :password_salt
  
  end

end
