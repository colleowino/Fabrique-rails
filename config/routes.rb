Rails.application.routes.draw do
  devise_for :users
  resources :photos
  resources :products
  resources :users
  resources :comments

  root to: 'products#index'
end
