Rails.application.routes.draw do

  root to: 'users#new'

  resources :users

  resources :events

  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  post "/logout", to: "sessions#destroy"
  

  #delete "/sessions/:id", to: "sessions#destroy"

  get "/users/:id", to: "users#show"


end

#   root GET    /                         users#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     login GET    /login(.:format)          sessions#new
#  sessions POST   /sessions(.:format)       sessions#create
#           DELETE /sessions/:id(.:format)   sessions#destroy