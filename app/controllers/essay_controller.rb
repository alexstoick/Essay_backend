class EssayController < ApplicationController

	def index
		@essays = Essay.all
		callback = params[:callback]
	end

	def view
		@essay = Essay.find(params[:id])
	end

	def create

		title = params[:title]
		description = params[:description]

		if ( title.nil? || description.nil? )
			render json: { "error" => "Wrong parameters" }, :status => :bad_request
		end

		essay = Essay.new
		essay.title = title
		essay.description = description
		essay.user_id = 0

		render json: { "success" => essay.save , "id" => essay.id }

	end

	def delete
	end
end
