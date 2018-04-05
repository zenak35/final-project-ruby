Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :albums
  resources :artists
  resources :playlists
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
