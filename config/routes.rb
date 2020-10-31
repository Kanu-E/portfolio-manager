Rails.application.routes.draw do

  root "welcome#index"

  get 'signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  
  
  resources :assets
  resources :classifications
  resources :portfolios
 

  get '/auth/facebook/callback' => 'sessions#omniauth'

  resources :users, only: [:create, :show, :index]

  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
