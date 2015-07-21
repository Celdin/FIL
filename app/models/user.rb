class User < ActiveRecord::Base
	validate :mail, format: with: /regex/i
	has_many :projets
end
