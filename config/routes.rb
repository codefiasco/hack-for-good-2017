Rails.application.routes.draw do
  root to: 'pages#home'

  resources :organizations
  resources :refugees
end
