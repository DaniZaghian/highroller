Rails.application.routes.draw do

  root to: 'sessions#new'

  resources :users

  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"


end
