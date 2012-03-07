class Day < ActiveRecord::Base
	has_many :dailyrecord
	has_many :patient, :through => :dailyrecord
end
