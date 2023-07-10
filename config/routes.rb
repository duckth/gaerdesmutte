Rails.application.routes.draw do
  root "facts#index"
  resources :facts

  namespace :api do
    scope "(:locale)", locale: /en|da/ do
      get "fact", to: "facts#index"
    end
  end
end
