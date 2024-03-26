Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # get "/", to: "main#index"
  # root to: "main#index"
  root "main#index"
  
  # route, controller, nickname (used in views/partials/_navbar )
  get "/about-us", to: "about#index", as: "about"

  get "/sign-up", to: "registrations#new", as: "register"
  post "/sign-up", to: "registrations#create"

  get "/sign-in", to: "sessions#new"
  post "/sign-in", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"
end
