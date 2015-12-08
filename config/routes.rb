Rails.application.routes.draw do
  # Routes for the Photo resource:
  # CREATE

  root "locations#index"

  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"
  get "/photos/location/:id", :controller => "photos", :action => "showbylocation"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Hiking_trail resource:
  # CREATE
  get "/hiking_trails/new", :controller => "hiking_trails", :action => "new"
  post "/create_hiking_trail", :controller => "hiking_trails", :action => "create"

  # READ
  get "/hiking_trails", :controller => "hiking_trails", :action => "index"
  get "/hiking_trails/:id", :controller => "hiking_trails", :action => "show"

  # UPDATE
  get "/hiking_trails/:id/edit", :controller => "hiking_trails", :action => "edit"
  post "/update_hiking_trail/:id", :controller => "hiking_trails", :action => "update"

  # DELETE
  get "/delete_hiking_trail/:id", :controller => "hiking_trails", :action => "destroy"
  #------------------------------

  # Routes for the Hotel resource:
  # CREATE
  get "/hotels/new", :controller => "hotels", :action => "new"
  post "/create_hotel", :controller => "hotels", :action => "create"

  # READ
  get "/hotels", :controller => "hotels", :action => "index"
  get "/hotels/:id", :controller => "hotels", :action => "show"

  # UPDATE
  get "/hotels/:id/edit", :controller => "hotels", :action => "edit"
  post "/update_hotel/:id", :controller => "hotels", :action => "update"

  # DELETE
  get "/delete_hotel/:id", :controller => "hotels", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"
  get "/locations/pricesort/:id", :controller => "locations", :action => "showbyprice"
  get "/locations/ratingsort/:id", :controller => "locations", :action => "showbyrating"
  get "/locations/categorysort/:id", :controller => "locations", :action => "showbycategory"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
