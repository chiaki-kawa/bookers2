Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/' => 'homes#about', as: 'about'
  resources :users, only: [:show, :edit, :index]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
