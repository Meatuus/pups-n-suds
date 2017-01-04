Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'users#index'

	# get '/users', to: 'users#index'
  resources :users, only: [:index, :new, :create, :show, :edit, :update]
	get '/about', to: 'users#about'
	get '/rates', to: 'users#rates'

  resource :sessions, only: [:new, :create, :destroy]

end
