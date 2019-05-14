Rails.application.routes.draw do
  root 'users#welcome'


  get 'services/index'
  get 'services/show'
  get 'services/new'
  get 'services/create'
  get 'services/edit'
  get 'services/update'
  get 'vehicles/index'
  get 'vehicles/show'
  get 'vehicles/new'
  get 'vehicles/create'
  get 'vehicles/edit'
  get 'vehicles/update'
  get 'customers/index'
  get 'customers/new'
  get 'customers/show'
  get 'customers/create'
  get 'customers/edit'
  get 'customers/update'
  resources :users
  resources :garages
  resources :customers
  resources :vehicles
  resources :employess
  resources :services





  get 'garage/index'
  get 'garage/show'
  get 'garage/new'
  get 'garage/create'
  get 'garage/edit'
  get 'garage/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
