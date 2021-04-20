Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  get "/logout", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get '/home', to: "home#index"

  root to: 'home#index'
end
