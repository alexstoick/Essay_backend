class User < ActiveRecord::Base
	attr_accessible :password_digest, :picUrl, :rating, :username, :key

	has_secure_password
end
