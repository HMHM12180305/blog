Rails.application.routes.draw do
  root  'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/about'
  get  'static_pages/help'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

