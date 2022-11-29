Rails.application.routes.draw do
  namespace :admin do
      resources :models
      resources :users
      resources :contents

      root to: "models#index"
    end
    resources :feadbacks
  devise_for :users
  root "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
