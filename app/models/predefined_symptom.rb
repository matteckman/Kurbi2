class PredefinedSymptom < ActiveRecord::Base
	belongs_to :symptom_category
	has_many :severity
	has_many :daily_record, :through => :severity
	has_many :patient_symptom_search
end
