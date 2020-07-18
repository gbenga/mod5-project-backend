Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :orders, only: [:index, :show]
      resources :medicines, only: [:index, :show]
      resources :pharmas, only: [:index, :show]
      resources :stocks, only: [:show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
