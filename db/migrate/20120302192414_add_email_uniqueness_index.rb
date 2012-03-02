class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
  	add_index :patients, :email, :unique => true
  end

  def self.down
  	remove_index :patients, :email
  end
end
