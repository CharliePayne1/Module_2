Rails.application.routes.draw do
  resources :receipts
  resources :retailers
  resources :bank_accounts
  resources :customers

  get '/login', to: 'customers#login'
  get '/logout', to: 'customers#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
