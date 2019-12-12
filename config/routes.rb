Rails.application.routes.draw do
  resources :products, only: [:show]
  mount Cartify::Engine, at: '/'
    root controller: :products, action: :index
end
