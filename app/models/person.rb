class Person < ActiveRecord::Base
	belongs_to :person
	belongs_to :doctor
	belongs_to :employee
	has_and_belongs_to_many :message
	has_and_belongs_to_many :action
	has_and_belongs_to_many :address
	has_and_belongs_to_many :role
end
