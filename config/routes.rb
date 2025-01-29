Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    resources :ratings, only: [:create]
  end
  root 'home#index'
end
