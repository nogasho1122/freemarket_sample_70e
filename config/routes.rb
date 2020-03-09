Rails.application.routes.draw do
  root 'tops#index'
  
  devise_for :users
  resources :items
  resources :tops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end