module SessionsHelper
	def sign_in(patient)
		cookies.permanent[:auth_token] = patient.auth_token
		current_patient = patient
		@current_patient = patient
	end

end
