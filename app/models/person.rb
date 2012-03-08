class Person < ActiveRecord::Base
	belongs_to :person
	belongs_to :doctor
	belongs_to :employee
	
	attr_accessible :birthday, :user_name, :location, :race, :sex, :bio, :first_occurrence, 
					:year_diagnosed, :condition, :doctor, :medications
	
	
end
