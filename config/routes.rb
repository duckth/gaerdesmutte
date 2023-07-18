Rails.application.routes.draw do
  # root "facts#index"
  root "login#index"

  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout"

  get "/admin" => "admin/interface#index", :as => :admin_interface
  resources :facts, controller: "admin/facts", only: [:new, :create, :show, :edit, :update, :destroy]
  resources :species, controller: "admin/species", only: [:new, :create, :show, :edit, :update, :destroy]

  namespace :api do
    scope "(:locale)", locale: /en|da/ do
      get "fact", to: "facts#index"
    end
  end
end
