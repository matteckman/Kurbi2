class Search < ActiveRecord::Base
	belongs_to :patient
	belongs_to :searchquery
end
