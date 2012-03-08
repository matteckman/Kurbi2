class AddUserNameUniquenessIndex < ActiveRecord::Migration
   def self.up
    	add_index :people, :user_name, :unique => true
    end
  
    def self.down
    	remove_index :people, :user_name
    end
end

