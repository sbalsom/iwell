Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#show"
  resources :therapists, only: [:index, :show]
  devise_for :users
  root to: 'pages#home'
  get 'sandbox', to: 'pages#sandbox'
  resources :therapists, only: :show
  get 'dashboard/show', to: 'dashboard#show'
end
