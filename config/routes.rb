Rails.application.routes.draw do
  resources :dealerships, except: [:show]
  resources :machines, except: [:show]
end
