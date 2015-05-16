Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  resources :users
  resources :devise

  resources :photos
  resources :products
  resources :comments

  root to: 'products#index'
end
