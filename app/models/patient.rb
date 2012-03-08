class Patient < ActiveRecord::Base
	has_secure_password
	
	attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
	
	has_one :person, :dependent => :destroy
	accepts_nested_attributes_for :person
	
	validates :first_name, :presence => true, :length => { :maximum => 50 }
	validates :last_name,  :presence => true, :length => { :maximum => 50 }
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,    :format => { :with => email_regex },
					     :uniqueness => { :case_sensitive => false }
	validates :password, :confirmation => true
	                    	
	before_create { generate_token(:auth_token) } 
	before_create :build_default_profile                    
	
	def send_password_reset
		generate_token(:password_reset_token)
		self.password_reset_sent_at = Time.zone.now
		save!
		PatientMailer.password_reset(self).deliver
	end
	
	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while Patient.exists?(column => self[column])
	end
	
	def build_default_profile
		person = build_person
		true
	end
	
end
