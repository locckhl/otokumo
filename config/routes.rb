Rails.application.routes.draw do

  resources :comments
  resources :songs

  get 'users/show'
  devise_for :users

  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/songs', to: 'static_pages#songs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
