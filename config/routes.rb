Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :service
  resources :user
  resources :permanth
  resources :delivey
end
