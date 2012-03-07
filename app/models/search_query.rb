class SearchQuery < ActiveRecord::Base
	has_many :search
	has_many :patient, :through => :search
end
