Rails.application.routes.draw do
  resources :terminals
  resources :cities
  resources :home, only: [:index]
  root to: 'home#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
