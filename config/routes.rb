Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles  # provides all REST-ful routes to Rails resources
 # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] #We built this manually at first, now encompassed in line above
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end

# REST - Representational State Transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions