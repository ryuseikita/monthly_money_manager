Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :services
  resources :users
  namespace :admin do
    resources :users
  end
  resources :permanths do
    collection do
      post 'search'
    end
  end
  resources :deliveies
end
