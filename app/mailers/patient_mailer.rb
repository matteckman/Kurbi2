class PatientMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.patient_mailer.password_reset.subject
  #
  def password_reset(patient)
    @patient = patient
    mail :to => patient.email, :subject => "Password Reset"
  end
end
