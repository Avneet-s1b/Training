Rails.application.routes.draw do
  devise_for :users
  # get "users/search"
  root "users#index"
  resources :users do
    collection do
      get 'search'
    end
  end 
  # get ":controller(/:action(/:id))"
  resources :users
  # get 'users/index'
  # get 'users/show'
  
  # get "authentication_form/signup"
  match "/sign-up", :to => "authentication_form#signup", :via => :get

  # get 'authentication_form/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
