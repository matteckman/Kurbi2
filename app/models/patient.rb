class Patient < ActiveRecord::Base
	has_one :person, :dependent => :destroy
	accepts_nested_attributes_for :person

	has_and_belongs_to_many :disease_profile
	has_many :daily_record
	has_many :day, :through => :daily_record
	has_many :patient_symptom_search
	has_many :search
	has_many :user_defined_symptom
	has_many :search_query, :through => :search
	has_secure_password
	
	attr_accessible :first_name, :last_name, :email, :photo, :password, :password_confirmation 
		
	validates :first_name, :presence => true, :length => { :maximum => 50 }
	validates :last_name,  :presence => true, :length => { :maximum => 50 }
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,    :format => { :with => email_regex },
					     :uniqueness => { :case_sensitive => false }
	validates :password, :confirmation => true
	
	has_attached_file :photo, :styles => { :small => "75x75>" },
						      :url  => "/assets/patients/:id/:style/:basename.:extension",
	                          :path => ":rails_root/public/assets/patients/:id/:style/:basename.:extension"
	
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	                    	
	before_create { generate_token(:auth_token) } 
	before_create :build_default_profile                    
	
	def to_param
		"#{id} #{first_name + " " + last_name}".parameterize
	end
	
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
