Rails.application.routes.draw do
 

  get 'user/new'
  post 'user/create'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
