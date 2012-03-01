class Patient < ActiveRecord::Base
	has_one :person
	accepts_nested_attributes_for :person
end
