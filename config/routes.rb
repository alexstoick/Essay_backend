EssayBackend::Application.routes.draw do
  get "tag/index"

	match "essay/", :to => "essay#index" , :via => :get
	match "essay/:id", :to => "essay#view", :via => :get

	match "user/" , :to => "user#create" , :via => :post
	match "user/login", :to => "user#login" , :via => :post

	match "tag" , :to => "tag#index" , :via => :get

end
