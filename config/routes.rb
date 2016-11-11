Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/sign_up', to: 'static_pages#sign_up'
  get '/login', to: 'static_pages#login'

  resources :signboards do
    resources :artists
  end

  resources :artists do
    resources :songs
  end
end
