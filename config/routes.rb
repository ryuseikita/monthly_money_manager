Rails.application.routes.draw do
  root to: 'tops#index'
  resources :tops,only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :services do
    resources :reviews
  end
  resources :users
  namespace :admin do
    resources :users, only: [:index] do
      collection do
        post 'comment_authority'
      end
    end
  end
  resources :permanths do
    collection do
      post 'search'
    end
  end
  resources :deliveries
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
