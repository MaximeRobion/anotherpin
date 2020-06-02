Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #we want to see multiple products
  resources :products do
    resources :order_items
  end

  #we want our user to order multiple times
  resources :orders

  #we ony want a user to see ONE cart
  resource :cart

  get "info", to: "pages#info"

  root "pages#home"
end
