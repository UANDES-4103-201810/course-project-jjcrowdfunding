Rails.application.routes.draw do
  resources :projects
  resources :searches
  resources :privacys
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }#, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'projects#index'
  get '/sdasdaasdyyagy36teeg6dg36gd63g6g' => 'privacy#privacypolicy'
  get '/search/:search' => 'searches#index'
  #get '/projects.' => 'projects#show'
  devise_scope :user do
  	delete 'sign_out', :to => 'devise/sessions#destroy'
  end
end
