Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  resources :reviews
  resources :users
  resources :groups, only: [:index,:new, :create, :edit, :update]
end
