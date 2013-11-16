EssayBackend::Application.routes.draw do
  get "tag/index"

	match "essay/", :to => "essay#index" , :via => :get
	match "essay/" , :to => "essay#create" , :via => :post

	match "essay/:id", :to => "essay#view", :via => :get
	match "essay/:id", :to => "essay#update" , :via => :put
	match "essay/:id", :to => "essay#delete" , :via => :delete

	match "essay/:id/reply" , :to => "reply#create" , :via => :post
	match "essay/:id/:reply_id", :to => "reply#update", :via => :put
	match "essay/:id/:reply_id" , :to => "reply#delete", :via => :delete


	match "user/" , :to => "user#create" , :via => :post
	match "user/login", :to => "user#login" , :via => :post

	match "tag" , :to => "tag#index" , :via => :get

end
