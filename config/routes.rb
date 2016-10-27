Rails.application.routes.draw do
  resources :offers
  resources :enterprises
  resources :jobs
  resources :careers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  get 'signup', to: 'users#new' 
  resources :users
  get '/login', to: 'sessions#new'

end
