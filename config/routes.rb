Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
                    resources :gifts
                     resources :events
                     resources :presents
              post "/login", to: "auth#create"
              get  '/signup',  to: 'users#new'
              post '/signup',  to: 'users#create'
            end
          end
        end
