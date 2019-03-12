# frozen_string_literal: true

Rails.application.routes.draw do
  resources :transactions, only: %i[show index create new]
  devise_for :users
  root 'transactions#index'
end
