Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello#index'

  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    resources :relationships, only: [:create, :destroy]
  end
end
