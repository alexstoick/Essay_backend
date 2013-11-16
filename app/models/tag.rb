class Tag < ActiveRecord::Base
	attr_accessible :name
	has_many :essay_tag
	has_many :essay , :through => :essay_tag
end
