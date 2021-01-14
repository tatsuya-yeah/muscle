Rails.application.routes.draw do
  devise_for :users
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  resources :relationships, only: [:create, :destroy, :show]
  resources :fronts, only: [:index, :show]
  resources :graphs
  resources :persons

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello#index'

  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  resources :blogs do
    resources :loves, only: [:create, :destroy]
    resources :supports, only: [:create]
  end
end
