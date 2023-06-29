Rails.application.routes.draw do
  get 'facts', to: 'facts#index'
  get 'facts/random'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
