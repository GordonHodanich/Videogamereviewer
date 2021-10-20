Rails.application.routes.draw do
  resources :comments
  resources :games, only: [:index, :show, :new, :create]
  # get 'home/index'
  devise_for :users
  root to: "home#index"
end
