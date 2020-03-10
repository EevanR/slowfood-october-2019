Rails.application.routes.draw do
  resources :order_items, only: [:create, :show, :destroy]
  resources :products, only: [:create, :new, :destroy, :edit, :update]
  devise_for :users, :owners
  root controller: :products, action: :index
end
