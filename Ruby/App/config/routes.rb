Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'user#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'user#my_friends'
  get 'search_friend', to: 'user#search'
  resources :friendships, only: [:create, :destroy]
  resources :user, only: [:show]
end
