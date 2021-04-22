Rails.application.routes.draw do
  root 'static#home'
  resources :retailers, only: %i[index show new create edit update] do
    resources :products, only: %i[index show new create edit update]
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
end
