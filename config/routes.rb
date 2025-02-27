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

  get "/password/forgot", to: "password_resets#new"
  post "/password/forgot", to: "password_resets#create"
  get "/password/reset", to: "password_resets#edit"
  patch "/password/reset", to: "password_resets#update"

  get "/account", to: "users#index"
  get "/account/edit", to: "users#edit"
  patch "/account", to: "users#update"
end
