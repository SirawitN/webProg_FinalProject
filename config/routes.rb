Rails.application.routes.draw do
  resources :users
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/main', to: "main#logIn", as: "logIn"
  get '/main/register', to: "main#register", as: "register"
end
