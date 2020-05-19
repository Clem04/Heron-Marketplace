Rails.application.routes.draw do
  devise_for :admins, path: 'admins'
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :users, path: 'users'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: 'pages#home'

  resources :categories, only: [] do
    resources :products, only: [:index, :show]
  end

  resources :posts, only: [:new, :create]

  get '/merchants/:id', to: 'merchants#show', as: 'merchant'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
