class Rendu < ActiveRecord::Base
	belongs_to :projet
	has_many :users
end
