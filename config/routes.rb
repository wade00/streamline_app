Rails.application.routes.draw do
  root to: 'static_pages#home', as: "/"

  devise_for :users, controllers: { registrations: :registrations }
  resources :dealerships, except: [:show]
  resources :machines, except: [:show]
  resources :listings, except: [:show]

  get 'listings/equip_alley',   { controller: :listings, action: :equip_alley }
  get 'listings/equip_locator', { controller: :listings, action: :equip_locator }
  get 'listings/mach_trader',   { controller: :listings, action: :mach_trader }
end
