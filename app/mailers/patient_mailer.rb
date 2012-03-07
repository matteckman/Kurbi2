class PatientMailer < ActionMailer::Base
  default from: "steve.roettger@gmail.com"
  
  # New Patient Registration
  def registration_confirmation(patient)
  	@patient = patient
  	#attachments["kurbi-logo.png"] = 
  	#	File.read("#{Rails.root}/public/images/kurbi-logo.png")
  	mail(:to => "#{patient.first_name} + " " + #{patient.last_name} 
  		<#{patient.email}>", :subject => "Thanks for registering, and welcome to Kurbi #{patient.first_name}!")
  end
  
  # Patient Password Reset
  def password_reset(patient)
    @patient = patient
    mail :to => patient.email, :subject => "Password Reset"
  end
end
