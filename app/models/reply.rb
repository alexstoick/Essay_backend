class Reply < ActiveRecord::Base
  attr_accessible :title, :content, :rating, :user_id, :essay_id
  belongs_to :essay
  belongs_to :user
end
