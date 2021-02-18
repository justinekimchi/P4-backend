Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :create, :destroy, :update, :index]
  resources :movies, only: [:index, :show]
  resources :user_movies, only: [:create, :destroy, :index, :update];


end
