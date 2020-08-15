Rails.application.routes.draw do
  devise_for :users
  root to: 'reviews#index'
  resources :reviews
  resources :users, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :groups, only: [:index,:new, :create, :edit, :update]
end
