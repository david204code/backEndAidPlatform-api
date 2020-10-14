Rails.application.routes.draw do
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  
  resources :helps, params: :id
  get '/publish', to: 'helps#publish'
  
  resources :accepted_helps

end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html