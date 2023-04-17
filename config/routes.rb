Rails.application.routes.draw do
  root to: 'rooms#show'
  devise_for :users
  
  resources :messages, only: :create
  
  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
