Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#show"
  resources :therapists, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  devise_for :users
  root to: 'pages#home'
  get 'sandbox', to: 'pages#sandbox'
end


