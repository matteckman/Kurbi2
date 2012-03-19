class Day < ActiveRecord::Base
	has_many :daily_record
	has_many :patient, :through => :daily_record
end
