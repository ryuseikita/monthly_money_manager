Rails.application.routes.draw do
  root to: 'tops#index'
  resources :tops,only: [:index]
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
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
