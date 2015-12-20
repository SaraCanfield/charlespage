Rails.application.routes.draw do

  resources :posts
  get 'welcome/index'
	root 'welcome#index'

	get '/bio' => 'bio#index'


end
