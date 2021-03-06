# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  root 'home#index'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'home/activity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
