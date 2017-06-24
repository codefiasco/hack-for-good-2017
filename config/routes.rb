Rails.application.routes.draw do
  root to: 'pages#home'

  get 'dashboard', to: "organizations#dashboard"
  get 'data', to: 'organizations#data', :defaults => { :format => 'json' }

  resources :organizations
end
