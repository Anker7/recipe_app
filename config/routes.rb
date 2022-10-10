Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'home#index' 
  resources :users
  resources :recipes do
    resource :likes, only: [:create, :destroy]
  end
end
