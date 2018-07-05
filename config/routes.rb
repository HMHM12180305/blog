Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  root  'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/about'
  get  'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
