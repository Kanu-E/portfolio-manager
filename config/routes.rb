Rails.application.routes.draw do
  resources :portfolios
  resources :finances
  resources :holdings
  resources :finances, only: [:index, :show] do
  resources :holdings, only: [:show, :index, :new, :edit]
  end
  root "welcome#index"
  get 'signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#omniauth'


  resources :users, only: [:create, :new, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
