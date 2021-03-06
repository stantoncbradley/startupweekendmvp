Rails.application.routes.draw do
  resources :bills

  resources :cosponsors

  resources :politician_bills

  resources :politicians

  resources :rosters

  resources :league_users

  resources :leagues

  devise_for :users

  authenticated :user do
    root to: 'users#show', as: 'authenticated_root'
  end

  root to: 'home#index'

  get 'users/:id', to: 'users#show', as: 'user_show'

  get '/import/:method', to: 'import#sunlight'

end
