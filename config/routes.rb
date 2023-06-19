Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :heatlth_services
      resources :reservations
      resources :posts
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index" 
end
