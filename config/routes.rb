Rails.application.routes.draw do
  # resources :users
  devise_for :users
 resources :currencies
 root 'currencies#index'
end
