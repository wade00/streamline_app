Rails.application.routes.draw do
  root to: 'static_pages#home', as: "/"

  devise_for :users
  resources :dealerships, except: [:show]
  resources :machines, except: [:show]
end
