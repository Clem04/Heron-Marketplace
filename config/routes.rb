Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [] do
    resources :products, only: [:index, :show]
  end

  get '/merchants/:id', to: 'merchants#show', as: 'merchant'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
