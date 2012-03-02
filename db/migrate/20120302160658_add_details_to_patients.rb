class AddDetailsToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :first_name,    :string
  	add_column :patients, :last_name,     :string
  	add_column :patients, :email,         :string
  	add_column :patients, :pasword_hash,  :string
  	add_column :patients, :password_salt, :string
  end
end
