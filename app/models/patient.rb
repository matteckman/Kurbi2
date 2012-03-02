class Patient < ActiveRecord::Base
	has_one :person, :dependent => :destroy
	accepts_nested_attributes_for :person
	
	attr_accessor :password
	attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
	
	validates :first_name, :presence => true, :length => { :maximum => 50 }
	validates :last_name,  :presence => true, :length => { :maximum => 50 }
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,    :presence => true,
					     :format => { :with => email_regex },
					     :uniqueness => { :case_sensitive => false }
	validates :password, :presence => true,
	                     :confirmation => true,
	                     :length => { :within => 6..40 }
	before_save :encrypt_password
		def has_password?(submitted_password)
			password_hash == encrypt(submitted_password)
		end
		
		def self.authenticate(email, submitted_password)
			patient = find_by_email(email)
			return nil if patient.nil?
			return patient if patient.has_password?(submitted_password)
		end
	
	
	
	private
		def encrypt_password
			self.password_salt = make_salt unless has_password?(password)
			self.password_hash = encrypt(password)
		end
		
		def encrypt(string)
			secure_hash("#{password_salt}-#{string}")
		end
		
		def make_salt
			secure_hash("#{Time.now.utc}-#{password}")
		end
		
		def secure_hash(string)
			Digest::SHA2.hexdigest(string)
		end
end
