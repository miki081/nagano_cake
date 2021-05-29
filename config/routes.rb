Rails.application.routes.draw do
  devise_for :customers
  get 'homes/top'
  get 'homes/about'
  resources :customers, only: [:new, :show, :edit, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
