Rails.application.routes.draw do
  resources :products
  resources :users

  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/main', to: "main#logIn", as: "index"

  get '/main/customer', to: 'main#cust_login', as: "cust_login"
  get '/main/store', to: 'main#store_login', as: 'store_login'
  post '/main/customer', to: 'main#findCust', as: 'find_cust'
  post '/main/store', to: 'main#findStore', as: 'find_store'

  get '/main/register', to: "main#register", as: "register"

  get 'main/register/customer', to: redirect('/main/register')
  get 'main/register/store', to: redirect('/main/register')
  post 'main/register/customer', to: "users#create", as: "create_customer"
  post 'main/register/store', to: 'stores#create', as: 'create_store' 
end
