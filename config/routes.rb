Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'sandbox', to: 'pages#sandbox'

  resources :therapists, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
end


