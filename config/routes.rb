Rails.application.routes.draw do
  resources :receipts
  resources :retailers
  resources :bank_accounts
  resources :customers

  root 'customers#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
