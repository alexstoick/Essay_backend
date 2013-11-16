class Essay < ActiveRecord::Base
	attr_accessible :description, :title, :user_id
	has_many :reply
	has_many :essay_tag
	has_many :tag, :through => :essay_tag
	belongs_to :user
end
