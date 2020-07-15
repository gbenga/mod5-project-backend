Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :medicines, only: [:index, :show]
  resources :pharmas, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
