Rails.application.routes.draw do
  get 'session/login'

  post 'session/logout'
  resources :retailers, only: %i[index show new create edit update delete]
  root 'static#home'

end
