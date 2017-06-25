Rails.application.routes.draw do
  root to: 'pages#home'


  resources :refugees
  resources :organizations
  resources :jobs, except: [:new]

  
  get 'settings', to: 'pages#settings'

  # Sessions
  post 'login-org', to: 'sessions#login_org'
  post 'login-ref', to: 'sessions#login_org'
  delete 'logout', to: 'sessions#logout'
end
