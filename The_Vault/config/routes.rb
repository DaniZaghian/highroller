Rails.application.routes.draw do

  root to: 'user#index'
  
  get 'user/index'

  get 'user/new'

  get 'user/show'

end
