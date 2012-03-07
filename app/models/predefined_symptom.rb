class PredefinedSymptom < ActiveRecord::Base
	belongs_to :symptomcategory
	has_many :severity
	has_many :dailyrecord, :through => :severity
	has_many :patientsymptomsearch
end
