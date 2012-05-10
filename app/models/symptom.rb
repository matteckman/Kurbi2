class Symptom < ActiveRecord::Base
	belongs_to :symptom_category
	
	attr_accessible :name, :description, :symptom_category_id
	
	def to_param
		"#{id} #{name}".parameterize
	end
end
