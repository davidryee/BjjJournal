Rails.application.routes.draw do
  get 'welcome/index'

  resources :matches
  resources :competitors
  root 'welcome#index'
end
