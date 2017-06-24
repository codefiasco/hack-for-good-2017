Rails.application.routes.draw do
  root to: 'pages#home'

  get 'dashboard', to: "organizations#dashboard"

end
