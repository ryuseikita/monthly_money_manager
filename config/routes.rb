Rails.application.routes.draw do
  root to: 'tops#index'
  resources :tops, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :services do
    collection do
      post 'search'
    end
    resources :reviews
  end
  resources :users
  namespace :admin do
    resources :users, only: [:index] do
      collection do
        post 'comment_authority'
        post 'search'
      end
    end
  end
  resources :permanths do
    collection do
      post 'search'
      post 'mail'
    end
  end
  resources :deliveries
  resources :resets, only: [:new, :create]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
