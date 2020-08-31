Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show] do 
    resources :orders_products, only: [:create]
  end

  resources :designers, only: [:index, :show]

 resources :orders, only: [:show]

end
