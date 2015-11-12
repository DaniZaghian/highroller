Rails.application.routes.draw do

  root to: 'user#index'

  get "/users", to: "user#index", as: "users"

  get "/users/new", to: "user#new", as: "new_user"

  get 'user/show'

end
