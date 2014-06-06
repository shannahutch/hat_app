Rails.application.routes.draw do
 root 'hats#index'

  resources :hats

#     Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        hats#index
#     hats GET    /hats(.:format)          hats#index
#          POST   /hats(.:format)          hats#create
#  new_hat GET    /hats/new(.:format)      hats#new
# edit_hat GET    /hats/:id/edit(.:format) hats#edit
#      hat GET    /hats/:id(.:format)      hats#show
#          PATCH  /hats/:id(.:format)      hats#update
#          PUT    /hats/:id(.:format)      hats#update
#          DELETE /hats/:id(.:format)      hats#destroy

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
