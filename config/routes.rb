Rails.application.routes.draw do

  get 'blogs/index'

  get 'blogs/show'

  get 'blogs/new'

  get 'blogs/edit'

  get 'blogs/create'

  get 'blogs/update'

  get 'blogs/destroy'

  root 'welcome#index'

  resources :users
  
  resources :sessions, only: [:new, :create, :destroy]
    get "signup", to: "users#new", as: "signup"
    get "login", to: "sessions#new", as: "login"
    get "logout", to: "sessions#destroy", as: "logout"
end
