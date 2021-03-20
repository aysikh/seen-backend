Rails.application.routes.draw do
  resources :reviews
  resources :companies
  resources :users

  post '/login', to: 'users#login', as: 'login'
  get '/auto_login', to: 'users#auto_login'
  # post 'login', to: 'user#create'
  post '/sesssion' => 'sessions#create' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
