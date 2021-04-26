Rails.application.routes.draw do
  resources :users, only: %i[index show new create edit update destroy]
  root 'static#home'
  get '/retailers/most_products', to: 'retailers#most_products', as: :retailer_most_products
  resources :retailers, only: %i[index show new create edit update destroy] do
    resources :products, only: %i[index show new create edit update destroy]
    delete '/products/:id', to: 'products#destroy', as: 'delete_product'
  end
  delete '/retailers/:id', to: 'retailers#destroy', as: 'delete_retailer'

  # Devise
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'login', to: 'users/session#login', :as => :new_session
    get 'logout', to: 'devise/sessions#destroy', :as => :destroy_session
  end

  post '/logout', as: :logout, to: 'users/session#logout'

  # Users
  resources :users, only: %i[index show new create edit update destroy]
end
