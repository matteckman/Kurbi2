class Doctor < ActiveRecord::Base
	has_one :person, :dependent => :destroy
        accepts_nested_attributes_for :person

        attr_accessor :password
        attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
end
