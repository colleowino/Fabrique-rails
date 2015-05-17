Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  resources :users
  resources :devise

  resources :photos
  
  resources :products do
  	resources :comments
  end
  

  root to: 'products#index'
end
