Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/contact'

  root 'welcome#index'

  resources :users

  resources :sessions, only: [:new, :create, :destroy]
    get "signup", to: "users#new", as: "signup"
    get "login", to: "sessions#new", as: "login"
    get "logout", to: "sessions#destroy", as: "logout"

  resources :blogs

  resources :comments 

end
