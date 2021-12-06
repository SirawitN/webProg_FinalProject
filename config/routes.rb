Rails.application.routes.draw do
  resources :users
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/main', to: "main#logIn", as: "index"

  get '/main/customer', to: 'main#cust_login', as: "cust_login"
  get '/main/store', to: 'main#store_login', as: 'store_login'
  post '/main/customer', to: 'main#findCust', as: 'find_cust'
  post '/main/store', to: 'main#findStore', as: 'find_store'

  get '/main/register', to: "main#register", as: "register"
end
