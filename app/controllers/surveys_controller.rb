class SurveysController < ApplicationController
		
	def show
		@patient = Patient.find(params[:id])
		@title = (@patient.first_name + " " + @patient.last_name)
		render 'show'
	end
	
	def more
		render 'more'
	end
end
