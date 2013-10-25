TraceMyRide::Application.routes.draw do
  get "passengers/index"

  resources :attendences
  resources :passengers

  resources :pick_up_points


  resources :vehicles


  resources :profiles
  resources :vehicles
  devise_for :users, :controllers => { :registrations => "registrations" }
  root :to => 'vehicles#index'
end
