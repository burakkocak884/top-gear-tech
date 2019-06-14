Rails.application.routes.draw do
   resources :appointments
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/new'
  get 'appointments/create'
  get 'appointments/edit'
  get 'appointments/update'
  devise_for :users, :controllers => { :registrations => "registrations", omniauth_callbacks: "callbacks"}
 post 'appointments/dates', to: 'appointments#date_picker'
 
  

  root 'sessions#home'

  resources :appointments
  resources :garages do 
    resources :appointments, only: [:index, :show, :new]

  end
  resources :customers
  resources :vehicles

  
  






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
