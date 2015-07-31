class Rendu < ActiveRecord::Base
	has_many :renduToUserLinks
	has_many :users
end
