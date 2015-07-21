class User < ActiveRecord::Base
	validate_format_of :mail, with: /regex/i
	belongs_to :projets
end
