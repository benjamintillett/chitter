require 'bcrypt'

class User 

	include DataMapper::Resource

	attr_reader :password
	attr_accessor :password_confirmation

	# validates_uniqueness_of :email, :username
	validates_confirmation_of :password

	property :id,     			Serial
	property :email, 			String, :unique => true, :message => "This email is already taken"
	property :password_digest, 	Text
	property :username, 		String, :unique => true,  :message => "This username is already taken"
	property :name, 			String

	def password=(password)
		@password = password
		self.password_digest = BCrypt::Password.create(password)	
	end	

	def self.authenticate(email,password)
		user = first(:email => email)
		if user && BCrypt::Password.new(user.password_digest) == password
			user
		else
			nil
		end
	end

end