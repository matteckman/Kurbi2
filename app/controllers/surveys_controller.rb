class SurveysController < ApplicationController
	def show
		@patient = Patient.find(params[:id])
		@person = @patient.person
		@title = (@patient.first_name + " " + @patient.last_name)
		render 'show'
	end
end
