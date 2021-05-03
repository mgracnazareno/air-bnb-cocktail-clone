# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  root to: 'pages#home', as: :root

  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: :destroy
end
