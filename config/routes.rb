Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :gifts
      resources :events
      resources :presents
      post "/login", to: "auth#create"
    end
  end
end
