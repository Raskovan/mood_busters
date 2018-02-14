Rails.application.routes.draw do
  resources :user_moods
  resources :user_images
  resources :moods
  resources :images

  resources :users do
    resources :conversations do
      resources :messages
    end
 end


  get '/users/:id/mood', to: 'users#mood', as: 'users_mood'
  post '/users/:id', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'

  get '/messages', to: 'messages#create'
  post '/messages', to: 'messages#create'
end
