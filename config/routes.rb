Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  root 'welcome#index'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'

  resources :users, :only => [:new, :create]


end
