# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  resources :settings, only: [:index] do
    collection do
      patch :update_user
    end
  end

  namespace :admin do
    root to: 'home#index'
    resources :categories
    resources :products
  end
end
