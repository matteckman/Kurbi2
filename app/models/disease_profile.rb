class DiseaseProfile < ActiveRecord::Base
	has_and_belongs_to_many :patient
	has_and_belongs_to_many :predefined_symptom
end
