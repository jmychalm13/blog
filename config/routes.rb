Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
