Rails.application.routes.draw do
  root to: 'cars#index'

  resources :cars do
    resources :services
  end
  
  resources :vendors
  resources :parts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
