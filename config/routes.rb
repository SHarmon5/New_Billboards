Rails.application.routes.draw do
  devise_for :users
  root 'bboards#index'

  resources :bboards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end

  delete 'remove_bboard_song/:id/:song_id', to: 'bboards#remove_song', as: 'remove_bboard_song'
end
