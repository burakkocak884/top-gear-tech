Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations"}


  

  root 'sessions#home'

  
  resources :garages
  resources :customers
  resources :vehicles
  resources :employess
  resources :services




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
