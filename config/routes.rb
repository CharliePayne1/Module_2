Rails.application.routes.draw do
  resources :receipts
  resources :retailers
  resources :bank_accounts
  resources :customers

  root 'customers#login'
  get '/login', to: 'customers#login'
  get '/logout', to: 'customers#logout'

  post '/bank_accounts/:id/all_transactions', to: 'bank_accounts#show_all', as: 'show_all_receipts'
  post '/retailers/:id/all_transactions', to: 'retailers#show_all', as: 'show_all'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
