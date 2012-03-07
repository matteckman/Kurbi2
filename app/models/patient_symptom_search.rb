class PatientSymptomSearch < ActiveRecord::Base
	belongs_to :patient
	belongs_to :predefinedsymptom
end
