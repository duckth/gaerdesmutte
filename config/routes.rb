Rails.application.routes.draw do
  scope '(:locale)', locale: /en|da/ do
    get 'facts', to: 'facts#index'
    get 'facts/random'
  end
end
