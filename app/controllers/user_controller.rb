require 'bcrypt'

class UserController < ApplicationController
	include BCrypt

	def index

		render json: { "1" => "list of all users" }

	end

	def create

		username = params[ :username ]
		password = params[ :password ]

		if ( username.nil? || password.nil? )
			render json: { "error" => "Wrong parameters" } ,
					:status => :bad_request
		end

		user = User.new
		user.username = username
		user.password = password
		user.key = SecureRandom.hex(10)
		user.rating = 3
		render json: { "success" => user.save , "key" => user.key }
	end

	def login
		username = params[ :username ]
		password = params[ :password ]

		if ( username.nil? || password.nil? )
			render json: { "error" => "Wrong parameters" } ,
					:status => :bad_request
		end

		user = User.find_by_username ( username ) ;

		if ( user.nil? )
			render json: { "error" => "User does not exist" } ,
					:status => :bad_request
		end

		if ( user.authenticate(password) )
			render json: { "key" => user.key }
		else
			render json: { "error" => "Wrong password" } ,
					:status => :bad_request
		end
	end

end
