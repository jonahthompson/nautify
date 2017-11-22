Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
	root 'home#index'

	resources :users, only: [:index, :show]

	resources :boats

	resources :jobs

  resources :contracts, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end