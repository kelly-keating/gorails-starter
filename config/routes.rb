Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # get "/", to: "main#index"
  # root to: "main#index"
  root "main#index"
  
  # route, controller, nickname (used in views/partials/_navbar )
  get "/about-us", to: "about#index", as: "about"
end
