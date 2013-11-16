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

	def update
		title = params[:title]
		description = params[:description]
		id = params[:id]

		essay = Essay.find(id)

		if ( ! title.nil? )
			essay.title = title
		end

		if ( ! description.nil? )
			essay.description = description
		end
		render json: { "success" => essay.save , "id" => essay.id }
	end

	def delete

		id = params[:id]

		render json: { "success" => ( Essay.delete(id) == 1 ) }
	end
end
