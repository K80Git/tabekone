Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  resources :reviews
  resources :users
  resources :groups
end
