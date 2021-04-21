Rails.application.routes.draw do
  root 'static#home'
  get '/login', as: :login, controller: 'session', action: 'login'
  post '/logout', as: :logout, controller: 'session', action: 'logout'
  resources :retailers, only: %i[index show new create edit update delete]
end
