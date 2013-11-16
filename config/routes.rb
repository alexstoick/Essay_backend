EssayBackend::Application.routes.draw do
  get "user/index"

	match "essay/", :to => "essay#index" , :via => :get
	match "essay/:id", :to => "essay#view", :via => :get

end
