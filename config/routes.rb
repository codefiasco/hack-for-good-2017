Rails.application.routes.draw do
  root to: 'pages#home'

  get 'organizations', to: "organizations#organizationsLandingPage"
  get 'refugees', to: "organizations#refugeesLandingPage"
  #get 'data', to: 'organizations#data', :defaults => { :format => 'json' }


  #resources :refugees
  #resources :organizations
end
