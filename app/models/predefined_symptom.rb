class PredefinedSymptom < ActiveRecord::Base
	has_many :symptom_categories
	has_many :daily_record_detail
	has_many :daily_record, :through => :daily_record_detail
	has_many :patient_symptom_search
end
