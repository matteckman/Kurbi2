module SessionsHelper
	
	def sign_in(patient)
		cookies.permanent.signed[:remember_token] = [patient.id, patient.password_salt]
		current_patient = patient
		@current_patient = patient
	end
	
	def current_patient
		@current_patient ||= patient_from_remember_token
	end
	
	def signed_in?
		return !current_patient.nil?
	end
	
	def sign_out
		current_patient = nil
		@current_patient = nil
		cookies.delete(:remember_token)
	end
	
	def current_patient?(patient)
		patient == current_patient
	end
	
	def deny_access
		store_location
		redirect_to signin_path, :notice => "Please sign in to access this page."
	end
	
	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		clear_return_to
	end
	
	private
	
		def patient_from_remember_token
			Patient.authenticate_with_salt(*remember_token)
		end
		
		def remember_token
			cookies.signed[:remember_token] || [nil,nil]
		end
		
		def store_location
			session[:return_to] = request.fullpath
		end
		
		def clear_return_to
			session[:return_to] = nil
		end
	
	

end
