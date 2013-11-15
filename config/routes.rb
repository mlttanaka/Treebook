Treebook::Application.routes.draw do
  get "profiles/show"
  devise_for :users

  resources :statuses

  root "statuses#index"

  get "profiles/:id", to: "profiles#show", as: "profiles"
end
