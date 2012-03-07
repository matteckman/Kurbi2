class DailyRecord < ActiveRecord::Base
	belongs_to :day
	belongs_to :patient
end
