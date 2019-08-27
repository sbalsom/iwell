Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'sandbox', to: 'pages#sandbox'
end
