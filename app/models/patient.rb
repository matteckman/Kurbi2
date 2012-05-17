class Patient < ActiveRecord::Base
	has_many				        :notifications
	has_many			          :messages, :through => :notifications
	has_many				        :action_confirmations
	has_many				        :actions, :through => :action_confirmations
	has_and_belongs_to_many :addresses
	
	has_and_belongs_to_many	:patient_groups
	
	has_many				        :daily_records
	has_many 				        :daily_record_details, :through => :daily_records
	has_many				        :symptoms, :through => :daily_records
	has_many				        :days, :through => :daily_records
	
	has_many				        :searches
	has_many				        :search_phrases, :through => :searches
	
	has_many				        :notes, :through => :daily_records
	
	has_many				        :surveys
	has_many				        :symptoms, :through => :surveys
	
	attr_accessible :first_name, :last_name, :email, :birthday, :location, :race, :sex, 
					        :first_occurrence, :year_diagnosed, :condition, :primary_physician, :medications, 
					        :other_medications, :photo, :password, :password_confirmation 
		
	validates :first_name, :presence => true, :length => { :maximum => 50 }
	validates :last_name,  :presence => true, :length => { :maximum => 50 }
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :format => { :with => email_regex },
					          :uniqueness => { :case_sensitive => false }
	has_secure_password
	validates :password, :confirmation => true
	
	has_attached_file :photo, :styles => { :small => "95x83>" },
						        :url  => "/assets/patients/:id/:style/:basename.:extension",
	                  :path => ":rails_root/public/assets/patients/:id/:style/:basename.:extension"
	
	validates_attachment_size         :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/tiff']
	                    	
	before_create { generate_token(:auth_token) }                  
	
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
end
