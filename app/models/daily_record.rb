class DailyRecord < ActiveRecord::Base
	belongs_to :day
	belongs_to :patient
	has_many   :daily_record_detail
end
