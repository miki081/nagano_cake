Rails.application.routes.draw do

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }
  
  


  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
    namespace :admins do
    root 'homes#top'
    resources :customer_admins, only: [:show, :edit, :index, :update]
    resources :items, except:   [:destroy]
    resources :genres, except: [:new, :show, :destroy]
    resources :orders, only: [:show, :index]
    get '/customer_admins/:id/orders' => 'orders#index', as: "customer_admins_orders"
    patch '/orders/:id/order_status' => 'orders#order_status_update', as: "order_status"
    patch '/orders/:id/item_status' => 'orders#item_status_update', as: "item_status"
end

root 'homes#top'
  get '/thanks' => 'homes#thanks' 
  get 'homes/about'
  get '/orders/confirm' => 'orders#confirm', as: 'orders_confirm'
  get '/orders/create_order' => 'orders#create_order'
  post '/orders/create_ship_address' => 'orders#create_ship_address'
  delete '/cart_items' => 'cart_items#destroy_all'
  resources :customers, only: [:show, :edit, :update] #do
      #collection do
          #get :confirm
      #end
  get '/customers/:id/withdrow' => 'customers#withdrow', as: 'withdrow_customer'
  patch '/customers/:id/withdrow' => 'customers#switch', as: 'withdrow_switch_customer'
  resources :ship_addresses, except: [:new, :show]
  resources :cart_items, except: [:new, :show, :edit]
  resources :items, only: [:index, :show]
  resources :genres, only: [:index] do
  resources :items, only: [:index]
  end
  # resources :addresses, only: [:index, :create, :update, :edit]
  # resources :sessions, only: [:new, :create, :destroy]
  resources :orders, except: [:edit, :update, :destroy]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# [:index, :new, :create, :update, :show, :edit ]