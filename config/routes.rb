Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles  # provides all REST-ful routes to Rails resources
 # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] #We built this manually at first, now encompassed in line above
end

# REST - Representational State Transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions