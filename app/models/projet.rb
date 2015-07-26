class Projet < ActiveRecord::Base
	has_many :users
	has_many :rendus
end
