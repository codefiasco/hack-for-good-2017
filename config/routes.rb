Rails.application.routes.draw do
  root to: 'pages#home'

  resources :refugees
  resources :organizations
end
