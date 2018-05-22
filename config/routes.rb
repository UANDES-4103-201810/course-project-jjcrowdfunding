Rails.application.routes.draw do

  devise_for :users
  get 'home/show'

  resources :projects, :users
  root 'users#show'
  
  get '/profile', to: 'application#profile', as: 'profile'
  get '/register', to: 'application#register', as: 'register'
  get '/search', to: 'application#search', as: 'search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
