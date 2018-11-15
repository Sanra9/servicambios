Rails.application.routes.draw do
  devise_for :users
 resources :currencies
 root 'currencies#index'
end
