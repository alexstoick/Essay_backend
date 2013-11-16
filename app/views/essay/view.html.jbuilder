json.title @essay.title
json.description @essay.description
json.user_id @essay.user_id
json.replies @essay.reply do |reply|
	json.title reply.title
	json.content reply.content
	json.rating reply.rating
	json.user_id reply.user_id
	json.parent_id reply.parent_id
end