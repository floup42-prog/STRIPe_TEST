Rails.application.routes.draw do
  
  get 'orders/new'
  # get 'orders/create'
  # root 'orders#new'
  resources :orders, only: [:new, :create]

  devise_for :users
  resources :users
  resources :events
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # scope '/checkout' do
  #   post 'create', to: 'checkout#create', as: 'checkout_create'
  #   get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  #   get 'success', to: 'checkout#success', as: 'checkout_success'
  # end

end
