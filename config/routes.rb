Rails.application.routes.draw do
  get '/company/:name/reviews', to: 'reviews#index'
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  resources :companies
  resources :users


  post '/login', to: 'users#login', as: 'login'
  # get '/login', to: 'users@token_authenticate'

  get '/auto_login', to: 'users#auto_login'
  # post 'login', to: 'user#create'
  post '/sesssion' => 'sessions#create' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# get 'phone_views/:action' , :controller => 'phone_views'

# post '/tournament/:id', to: 'tournaments#show'