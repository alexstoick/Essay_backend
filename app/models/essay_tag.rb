class EssayTag < ActiveRecord::Base
	attr_accessible :essay_id, :tag_id
	belongs_to :essay
	belongs_to :tag
end
