Rails.application.routes.draw do
  resources :songs
  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/songs', to: 'static_pages#songs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
