Rails.application.routes.draw do
  get 'welcome/index'

  resources :matches

  root 'welcome#index'
end
