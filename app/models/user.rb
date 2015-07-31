class User < ActiveRecord::Base
 	validate :mail, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
 	has_many :projetToUserLinks
	has_many :renduToUserLinks
	
	def self.authenticate(email, submitted_password)
		user = User.where(mail:email).first
		return nil  if user.nil?
		return user if user.password == submitted_password
	end
  
	  def self.authenticate_with_salt(id, cookie_salt)
		user = find_by_id(id)
		return user
	  end
end
