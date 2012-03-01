class Person < ActiveRecord::Base
	belongs_to :person
	belongs_to :doctor
	belongs_to :employee
end
