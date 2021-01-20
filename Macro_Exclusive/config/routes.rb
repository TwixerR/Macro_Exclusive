Rails.application.routes.draw do
	resources :products
	resources :pages
	root to: "pages#index"
end
