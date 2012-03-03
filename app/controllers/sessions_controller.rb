class SessionsController < ApplicationController
  def new
  	@title = "Sign in"
  end
  
  def create
      patient = Patient.authenticate(params[:email],
                                     params[:password])
      if patient.nil?
        flash.now[:error] = "Invalid email/password combination."
        @title = "Sign in"
        render 'new'
      else
       sign_in patient
       redirect_back_or patient
      end
  end
      
  def destroy
  	sign_out
    redirect_to root_path
  end
end
