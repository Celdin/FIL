class User < ActiveRecord::Base
	validate :mail, format: with: /regex/i
	belongs_to :projets
end
