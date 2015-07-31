class Rendu < ActiveRecord::Base
	has_many :renduToUserLinks
	belongs_to :projet
end
