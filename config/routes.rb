Rails.application.routes.draw do
  resources :comments, only: [:new, :create]
  resources :games, only: [:index, :show, :new, :create] do 
    resources :comments, only: [:create]
  end
  devise_for :users
  root to: "home#index"
end
