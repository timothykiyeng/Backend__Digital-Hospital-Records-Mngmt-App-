Rails.application.routes.draw do
  resources :medical_histories, only: [:index]
  resources :departments, only: [:index]
  resources :appointments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
