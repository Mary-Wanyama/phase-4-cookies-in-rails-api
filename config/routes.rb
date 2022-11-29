Rails.application.routes.draw do
  get "/sessions", to: "sessions#index"
  delete "/sessions", to: "session#destroy"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
end
