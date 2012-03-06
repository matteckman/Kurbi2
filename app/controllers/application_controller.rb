class ApplicationController < ActionController::Base
  protect_from_forgery
 
  private
  	def current_patient
  		@current_patient ||= Patient.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  	end
  	
  	helper_method :current_patient
  	
  	def authorize
  		redirect_to signin_path, alert: "Please sign in to access this page." if 
  			current_patient.nil?
  	end    
end
