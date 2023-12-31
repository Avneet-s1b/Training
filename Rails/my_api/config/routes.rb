Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors do
        resources :articles
      end
      resources :errors
      get "/500", to: "errors#internal_server_error"
      get "*unmatched_route", to: "errors#not_found"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
