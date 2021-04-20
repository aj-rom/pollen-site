Rails.application.routes.draw do
  resources :retailers, only: %i[index show create edit update delete]
  root 'static#home'

end
