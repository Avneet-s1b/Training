Rails.application.routes.draw do
  resources :ads
  concern :addable do
    resources :ads
  end
  resources :magzines, concerns: :addable
  # resources :magzines do
  #   resources :ads
  # end

  resources :users
  
  # resources :users, path_names: { new: 'make', edit: 'change' } # this line is the resourceful route

  # resources :avneet, controller: 'users'
  # resources :photos, controller: 'users'
  # resource :user #this is a singulare resource route
  # resolve('User') { [:user] }

  resource :user , only: [:show,:new]

  # match '/website', to: Website, via: :all

  get 'practice/page'
  # get 'demo/index'
  resources :demo
  # match 'demo/:id', :to => 'demo#show', :via => :get
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
