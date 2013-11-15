Treebook::Application.routes.draw do
  get "profiles/show"
  devise_for :users

  devise_scope :user do
    get "register", :to => "devise/registrations#new", as: :register
    get "sign_in", :to => "devise/sessions#new", as: :sign_in
    delete "sign_out", :to => "devise/sessions#destroy", as: :sign_out
  end

  resources :statuses
  get 'feed', to: 'statuses#index', as: :feed

  root "statuses#index"

  get ':id', to: 'profiles#show'
end
