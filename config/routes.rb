Rails.application.routes.draw do
  root to: 'pages#home'

  get 'job_recommendations', to: 'refugees#job_recommendations'
  post 'apply', to: 'refugees#apply'


  resources :refugees
  resources :organizations
  resources :jobs, except: [:new]

  
  get 'settings', to: 'pages#settings'

  # Sessions
  post 'login-org', to: 'sessions#login_org'
  post 'login-ref', to: 'sessions#login_ref'
  delete 'logout', to: 'sessions#logout'
end
