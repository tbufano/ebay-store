Rails.application.routes.draw do
  devise_for :users
  get "/" => 'products#index'

  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id/edit' => 'products#edit'
  delete '/products/:id' => 'products#destroy'
  patch '/products/:id' => 'products#update'
  get '/products/:id' => 'products#show'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'
  get '/suppliers/:id' => 'suppliers#show'

  post '/search' => 'products#search'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end