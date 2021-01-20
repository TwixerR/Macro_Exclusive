Rails.application.routes.draw do
  #User authentication, login and similar items section
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
    resources :users, only: [:new, :create]
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'welcome', to: 'sessions#welcome'
	get 'authorized', to: 'pages#index'


	#general routes section
	resources :accounts
	resources :products
	resources :pages

	#landing page setup
	root to: "pages#index"
end
