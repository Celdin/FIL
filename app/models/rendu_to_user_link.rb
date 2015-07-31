class RenduToUserLink < ActiveRecord::Base
	belongs_to :rendu
	belongs_to :user
end
