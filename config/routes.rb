Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  # devise_for :users
 resources :currencies
 root 'currencies#index'
end
