class Projet < ActiveRecord::Base
 	has_many :projetToUserLinks
	has_many :rendus
end
