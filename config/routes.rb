Treebook::Application.routes.draw do
  resources :statuses

  root "statuses#index"

end
