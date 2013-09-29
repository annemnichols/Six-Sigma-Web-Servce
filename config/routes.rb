SixSigmaWebServce::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  
  resources :quality_specifications 
  resources :quality_specification_imports
  resources :change_loggings
  get 'change_loggings_deleteall' => 'change_loggings#deleteall'
  resources :test_codes
  resources :test_code_imports
end