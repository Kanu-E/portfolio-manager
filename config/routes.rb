Rails.application.routes.draw do

  resources :assets
  resources :classifications
  resources :portfolios
  root "welcome#index"

  get '/auth/facebook/callback' => 'sessions#omniauth'

  resources :users, only: [:create, :show]

  get 'signup' => 'users#new'

 
  resources :sessions

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
