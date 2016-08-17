Rails.application.routes.draw do

  # Root ===================================================================
  root 'welcome#index'


  # Users ===================================================================
  resources :users


  # Sessions ===================================================================
  resources :sessions, only: [:new, :create, :destroy]
    get "signup", to: "users#new", as: "signup"
    get "login", to: "sessions#new", as: "login"
    get "logout", to: "sessions#destroy", as: "logout"


  # Blogs ===================================================================
  resources :blogs


  # Comments ===================================================================
  resources :comments


  # Pages ===================================================================
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'

end
