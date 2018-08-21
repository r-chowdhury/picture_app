Rails.application.routes.draw do
  resources :users
  resources :pictures
  resources :comments
  resources :tags

  # get 'comments/index'
  # get 'comments/show'
  # get 'comments/new'
  # get 'comments/edit'
  # get 'tags/index'
  # get 'tags/show'
  # get 'tags/new'
  # get 'tags/edit'
  # get 'pictures/index'
  # get 'pictures/show'
  # get 'pictures/new'
  # get 'pictures/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
