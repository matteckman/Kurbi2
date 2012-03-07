class Severity < ActiveRecord::Base
	belongs_to :dailyrecord
	belogns_to :predefinedsymptom
end
