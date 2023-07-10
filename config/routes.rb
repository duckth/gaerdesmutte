Rails.application.routes.draw do
  # root "facts#index"
  resources :facts

  root "login#index"

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  namespace :api do
    scope "(:locale)", locale: /en|da/ do
      get "fact", to: "facts#index"
    end
  end
end
