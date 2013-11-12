Treebook::Application.routes.draw do
  devise_for :users
  resources :statuses

  root "statuses#index"

end
