Rails.application.routes.draw do

  resources :posts
  get 'welcome/index'
	root 'welcome#index'

	get '/bio' => 'bio#index'

	get '/plays' => 'plays#index'
	get '/plays/rhymes'
	get '/plays/ordinary'
	get '/plays/giant'
	get '/plays/nuts'
	get '/plays/vagabound'
	get '/plays/flock'

	resources:contacts, only: [:new, :create]


end
