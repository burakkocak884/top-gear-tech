Rails.application.routes.draw do
   
  
  get 'appointments/new'
  get 'appointments/create'
  get 'appointments/edit'
  get 'appointments/update'
  devise_for :users, :controllers => { :registrations => "registrations", omniauth_callbacks: "callbacks"}
 

  

  root 'sessions#home'

  
  resources :garages do 
    resources :appointments, only: [:index, :show]

  end
  resources :customers
  resources :vehicles
  
  
  






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
