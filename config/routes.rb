Rails.application.routes.draw do
  root 'welcome#home'
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new', as: :login 
  post '/login' => 'sessions#create'
  delete '/logout', to:'sessions#destroy', as: :logout 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
