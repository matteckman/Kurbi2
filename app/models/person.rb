class Person < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor
	belongs_to :employee
	has_and_belongs_to_many :message
	has_and_belongs_to_many :action
	has_and_belongs_to_many :address
	has_and_belongs_to_many :role
	
	attr_accessible :birthday, :user_name, :location, :race, :sex, :bio, 
	:first_occurrence, :year_diagnosed, :condition, :primary_physician, :medications, :other_medications
	
	def to_param
		"#{id} #{patient_id} #{patient.first_name + " " + patient.last_name}".parameterize
	end
	
end
