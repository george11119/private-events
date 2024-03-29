Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
  resources :events, only: %i[new create show]
  resources :user, only: %i[show]
  resources :event_attending, only: %i[new create]
end
