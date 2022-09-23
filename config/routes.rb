Rails.application.routes.draw do

  resources :users, only: [:index, :show, :edit, :update]

  resources :books, only: [:new, :index, :show, :create, :destroy]

  devise_for :users

  root to: "homes#top"
  get  '/homes/about', to: 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
