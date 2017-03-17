Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :log_games, only: [:new, :create]
  # get '/history', to: 'home#history'
  # get '/new_log',     to: 'home#new'
  # post '/logs',     to: 'home#log'
end
