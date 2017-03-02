Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, expect: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me' , to: 'pages#about'
  get 'contact' , to: 'pages#contact'
  
  resources :blogs
 
  root to: 'pages#home'

  root to: "home#index"
end
