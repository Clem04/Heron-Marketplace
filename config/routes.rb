Rails.application.routes.draw do
  devise_for :merchants, controllers: { registrations: "merchants/registrations", sessions: "merchants/sessions"  }
  devise_for :admins, controllers: { registrations: "admins/registrations", sessions: "admins/sessions"  }
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [] do
    resources :products, only: [:index, :show]
  end

  resources :products, only: [:new, :create]
  resources :posts, only: [:new, :create]
  resources :line_items
  resources :carts
  resources :orders, only: [:show, :create]
  # resources :order_items, only: [:show]

  get '/merchants/:id', to: 'merchants#show', as: 'merchant'

  # Merchant onboarding url link once profile submitted
  get "stripe/connect", to: "stripe#connect", as: :stripe_connect

  get '/inventory', to: 'merchants#inventory', as: 'inventory'
  # get '/order', to: 'pages#order', as: 'order'
  get '/account', to: 'pages#account', as: 'account'

  # Dashboard for merchants
  get '/dashboard', to: 'pages#dashboard', as: :merchant_root

  namespace :merchant do
    root to: 'pages#dashboard' # creates merchant dashboard root_path
  end

  # Dashboard for admins
  get '/invitations', to: 'pages#invitations', as: :admin_root

   namespace :admin do
    root to: 'pages#invitations' # creates merchant dashboard root_path
  end

  as :merchant do
    get 'signin' => 'devise/sessions#new'
    post 'signin' => 'devise/sessions#create'
    delete 'signout' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
