class SessionsController < ApplicationController
  def new
  	@title = "Sign in"
  end
  
  def create
      patient = Patient.find_by_email(params[:email])
      if patient && patient.authenticate(params[:password])
      	if params[:remember_me]
      	  cookies.permanent[:auth_token] = patient.auth_token
        else
      	  cookies[:auth_token] = patient.auth_token
      	end
      	 redirect_to patient
      else
      	flash.now[:error] = "Invalid email/password combination."
      	render "new"
      end
  end
      
  def destroy
  	cookies.delete(:auth_token)
    redirect_to root_path
  end
end
