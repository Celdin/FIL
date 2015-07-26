class Rendu < ActiveRecord::Base
	belongs_to :projet
	belongs_to :user
end