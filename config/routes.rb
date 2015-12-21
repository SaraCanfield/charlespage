Rails.application.routes.draw do

  devise_for :users
 devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
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
