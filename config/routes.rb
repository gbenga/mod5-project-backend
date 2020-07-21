Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new, :create, :edit, :update]
      resources :orders, only: [:index, :show, :new, :create]
      resources :order_medicines, only: [:index, :show, :new, :create]
      resources :medicines, only: [:index, :show]
      resources :pharmas, only: [:index, :show]
      resources :stocks, only: [:show]

      post "/sign-in", to: "users#sign_in"
      get "/validate", to: "users#validate"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
