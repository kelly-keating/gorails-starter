Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # get "/", to: "main#index"
  # root to: "main#index"
  root "main#index"
  
  get "/about", to: "about#index"
end
