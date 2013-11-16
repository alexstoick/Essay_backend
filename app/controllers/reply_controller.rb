class ReplyController < ApplicationController
	def create

		essay_id = params[:id]
		title = params[:title]
		content = params[:description]
		parent_id = params[:parent_id]

		reply = Reply.new
		reply.title = title
		reply.content = content
		reply.parent_id = parent_id
		reply.essay_id = essay_id
		reply.user_id = 0

		render json: { "success" => reply.save , "id" => reply.id }
	end

	def update
	end

	def delete
	end
end
