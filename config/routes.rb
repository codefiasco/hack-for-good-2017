Rails.application.routes.draw do
  root to: 'pages#home'

  get 'dashboard', to: "organizations#dashboard"
  get 'data', to: 'organizations#data', :defaults => { :format => 'json' }

  resources :refugees
  resources :organizations
  resources :jobs, except: [:new]

  # Sessions
  post 'login-org', to: 'sessions#login_org'
  post 'login-ref', to: 'sessions#login_org'
  delete 'logout', to: 'sessions#logout'
end
