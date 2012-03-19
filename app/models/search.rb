class Search < ActiveRecord::Base
	belongs_to :patient
	belongs_to :search_query
end
