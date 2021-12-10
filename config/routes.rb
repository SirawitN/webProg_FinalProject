Rails.application.routes.draw do
  resources :reviews
  resources :order_items
  resources :orders
  resources :cart_items
  resources :carts
  resources :products
  
  resources :users

  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/main', to: "main#logIn", as: "index"
  get '/main/feed/:id', to: 'main#feed', as: 'feed'

  get '/main/customer', to: 'main#cust_login', as: "cust_login"
  get '/main/store', to: 'main#store_login', as: 'store_login'
  post '/main/customer', to: 'main#findCust', as: 'find_cust'
  post '/main/store', to: 'main#findStore', as: 'find_store'

  get '/main/logout', to: 'main#logOut', as: 'logout'

  get '/main/register', to: "main#register", as: "register"

  get '/products/tags/:tag', to: 'products#index', as: 'tag'

  post '/stores/:id/follow', to: 'follows#follow', as: 'follow'
  delete '/stores/:id/unfollow', to: 'follows#unfollow', as: 'unfollow'
end
