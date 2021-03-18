Rails.application.routes.draw do
  resources :reviews
  resources :companies
  resources :users

  post '/login', to: 'users#login', as: 'login'
  # post 'login', to: 'user#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
