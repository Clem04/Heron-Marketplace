Rails.application.routes.draw do
  get 'merchant_dashboards/dashbaord'
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

  get '/merchants/:id', to: 'merchants#show', as: 'merchant'
  
  as :merchant do
    get 'signin' => 'devise/sessions#new'
    post 'signin' => 'devise/sessions#create'
    delete 'signout' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
