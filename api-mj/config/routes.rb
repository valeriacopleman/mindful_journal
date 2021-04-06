Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  post '/signup', to: 'users#create'
  
  resources :manifestations
  resources :prompts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
