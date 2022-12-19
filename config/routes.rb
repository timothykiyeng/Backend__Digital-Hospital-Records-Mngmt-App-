Rails.application.routes.draw do
  resources :patients
  resources :doctors, only: [:index, :show]
  resources :appointments
  resources :medical_histories, only: [:index]
  resources :departments, only: [:index]
end
