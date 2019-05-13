Rails.application.routes.draw do
  get 'index/index'
  
  resources :articles

  root 'index#index'
end
