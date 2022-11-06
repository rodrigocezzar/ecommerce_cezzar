# frozen_string_literal: true

Rails.application.routes.draw do
  get 'products/index'
  devise_for :users

  get 'home/index'
  root to: 'home#index'

  namespace :admin do
    root to: 'home#index'
    resources :categories
    resources :products
  end
end
