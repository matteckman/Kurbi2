class DailyRecordDetail < ActiveRecord::Base
	belongs_to :daily_record
	belongs_to :predefined_symptom
end
