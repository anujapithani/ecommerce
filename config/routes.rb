Rails.application.routes.draw do
  get 'products/new'
  get 'products/index'
  get 'products/edit'
  get 'products/destroy'
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"


get 'sessions/new'
get 'sessions/create'
get 'sessions/destroy'
get 'admin/create'
get 'admin/new'
get 'admin/index'
get '/signup' => 'admins#new'
post '/admin' => 'admins#create'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

root "admins#index"
resources  :products
end