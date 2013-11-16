class Essay < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  has_many :reply
  belongs_to :user
end
