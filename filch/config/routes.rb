Rails.application.routes.draw do
  resources :blacklists
  resources :dumpsters
  resources :comments
  resources :rants
  resources :users
  resources :geofences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
