class PatientSymptomSearch < ActiveRecord::Base
	belongs_to :patient
	belongs_to :predefined_symptom
end
