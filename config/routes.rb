Rails.application.routes.draw do
  resources :explainations

  resources :descriptions

  resources :words

  resources :languages

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
