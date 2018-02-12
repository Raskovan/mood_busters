Rails.application.routes.draw do
  resources :user_images
  resources :moods
  resources :images
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'sessions#new'
end
