class PasswordResetsController < ApplicationController
  def new
  	@title = "Reset Password"
  end
  
  def create
    patient = Patient.find_by_email(params[:email])
    patient.send_password_reset if patient
    redirect_to root_url, :notice => "Email sent with password reset instructions."
  end
  
  def edit
    @patient = Patient.find_by_password_reset_token!(params[:id])
  end
  
  def update
    @patient = Patient.find_by_password_reset_token!(params[:id])
    if @patient.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password reset has expired."
    elsif @patient.update_attributes(params[:patient])
      redirect_to root_url, :notice => "Password has been reset!"
    else
      render :edit
    end
  end
end