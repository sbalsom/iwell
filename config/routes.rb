Rails.application.routes.draw do
  resources :therapists, only: [:index, :show]
  devise_for :users
  root to: 'pages#home'
  get 'sandbox', to: 'pages#sandbox'
  resources :therapists, only: :show
end
