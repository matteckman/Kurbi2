class SymptomCategory < ActiveRecord::Base
	has_many :symptoms
	
	attr_accessible :name, :description
	
	def to_param
		"#{id} #{name}".parameterize
	end

end
