Rails.application.routes.draw do
  post 'sessions/create', to: 'sessions#create'
  delete 'sessions/destroy', to: 'sessions#destroy'
  get 'sessions/new', to: 'sessions#new'
  get 'users/new'
  # get 'home/index'
  root to:"home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resource :users, only: [:new, :create]

  get "/products", to: "products#all_products"
  get "/products/new", to: "products#new_product"
  post "/products", to: "products#create_product"
  get "/products/:id", to: "products#show_product", as: :product_show
  get "/products/:id/edit", to: "products#edit_product", as: :product_edit
  put "/products/:id", to: "products#update_product"
  delete "/products/:id", to: "products#delete_product", as: :product_delete



  # resources :photos do
  #   get "/revoke", on: :member
  #   resources :comments do
  #     get "/revoke", on: :member
  #   end
  # end

end
