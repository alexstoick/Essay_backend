class ReplyController < ApplicationController
	def create

		essay_id = params[:id]
		title = params[:title]
		content = params[:description]
		parent_id = params[:parent_id]

		if ( title.nil? || content.nil? || parent_id.nil? )
			render json: { "error" => "Wrong parameters" }, :status => :bad_request
		end

		reply = Reply.new
		reply.title = title
		reply.content = content
		reply.parent_id = parent_id
		reply.essay_id = essay_id
		reply.user_id = 0

		render json: { "success" => reply.save , "id" => reply.id }
	end

	def update

		title = params[:title]
		content = params[:description]
		parent_id = params[:parent_id]

		reply = Reply.find(params[:reply_id])
		if ( ! title.nil? )
			reply.title = title
		end
		if ( ! content.nil? )
			reply.content = content
		end
		if ( ! parent_id.nil? )
			reply.parent_id = parent_id
		end
		render json: { "success" => reply.save , "id" => reply.id }

	end

	def delete

		id = params[:reply_id]

		render json: { "success" => ( Reply.delete(id) == 1 )}

	end
end
