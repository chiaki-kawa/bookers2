Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/' => 'homes#about', as: 'about'
  resources :users, only: [:create, :show, :edit, :index, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
