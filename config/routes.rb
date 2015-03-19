Rails.application.routes.draw do
  devise_for :users
    resources :users, only: [:show]
    resources :items, only: [:create]
    
  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'
end
