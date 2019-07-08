Rails.application.routes.draw do
  get 'home/index'
  get 'platform/index'
  get 'terms', to: 'home#terms'
  get 'search', to: 'platform#search'

  devise_for :users, controllers: {omniauth_callbacks: 'user/omniauth_callbacks', sessions: 'user/sessions'
      }

  resources :blacklists
  resources :dumpsters
  resources :comments
  resources :rants
  resources :users
  resources :geofences

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  