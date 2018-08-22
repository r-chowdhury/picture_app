Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create]
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#destroy'
  resources :pictures
  resources :comments
  resources :tags
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'

end
