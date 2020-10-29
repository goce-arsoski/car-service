Rails.application.routes.draw do
  get 'parts/index'
  get 'parts/show'
  get 'parts/new'
  get 'parts/create'
  get 'parts/edit'
  get 'parts/update'
  get 'parts/destroy'
  get 'vendors/index'
  get 'vendors/show'
  get 'vendors/new'
  get 'vendors/create'
  get 'vendors/edit'
  get 'vendors/update'
  get 'vendors/destroy'
  get 'services/index'
  get 'services/show'
  get 'services/new'
  get 'services/create'
  get 'services/edit'
  get 'services/update'
  get 'services/delete'
  root to: "cars#index"

  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
