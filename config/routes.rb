Rails.application.routes.draw do
  root to: 'machines#index'

  devise_for :users
  resources :dealerships, except: [:show]
  resources :machines, except: [:show]
end
