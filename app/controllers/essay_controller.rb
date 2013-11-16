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
		content = params[:content]

		if ( title.nil? || content.nil? )
			render json: { "error" => "Wrong parameters" }, :status => :bad_request
		end

	end

	def delete
	end
end
