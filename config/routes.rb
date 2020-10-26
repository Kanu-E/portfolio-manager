Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/edit'
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
