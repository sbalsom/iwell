Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#show"
  root to: 'pages#home'
  devise_for :users
  resources :therapists, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: :show do
    get 'video_session', to: 'pages#video_session'
    get 'assign', to: 'pages#assign'
  end
  get 'sandbox', to: 'pages#sandbox'

end


