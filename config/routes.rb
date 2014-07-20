Rails.application.routes.draw do
  resources :explanations

  resources :descriptions

  resources :words

  resources :languages

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
