Rails.application.routes.draw do
  devise_for :users
  root 'home#index' 
  resources :users
  resources :recipes do
    resource :likes, only: [:create, :destroy]
  end
end
