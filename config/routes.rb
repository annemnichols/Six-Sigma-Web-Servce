SixSigmaWebServce::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  
  resources :quality_specifications 
  get 'quality_specifications_init' => 'quality_specifications#initialise_db'
  resources :change_loggings
  get 'change_loggings_deleteall' => 'change_loggings#deleteall'
  resources :test_codes
end