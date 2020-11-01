Rails.application.routes.draw do
  get 'holdings/index'
  get 'holdings/show'
  get 'holdings/new'
  get 'holdings/edit'
  resources :finances
  root "welcome#index"
  get 'signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#omniauth'
  resources :portfolios
  resources :finances

  resources :users, only: [:create, :new, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
