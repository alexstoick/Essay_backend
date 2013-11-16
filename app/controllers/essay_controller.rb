class EssayController < ApplicationController
	def index
		@essays = Essay.all
	end

	def view
		@essay = Essay.find(params[:id])
	end

	def create

		title = params[:title]
		content = params[:content]
		

		if ( title.nil? || content.nil? )


	end

	def delete
	end
end
