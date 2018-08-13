Rails.application.routes.draw do
  get 'welcome/index'

  resources :matches
  resources :competitors
  resources :belts
  root 'welcome#index'
end
