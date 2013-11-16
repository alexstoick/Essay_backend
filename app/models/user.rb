class User < ActiveRecord::Base
  attr_accessible :password, :picUrl, :rating, :username
end
