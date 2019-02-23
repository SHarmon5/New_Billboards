Rails.application.routes.draw do
  root 'bboards#index'

  resources :bboards do
    resources :songs
  end

  resources :artists do
    resources :songs
  end
end
