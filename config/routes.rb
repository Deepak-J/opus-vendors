Rails.application.routes.draw do
  root to: 'providers#index'
  ################## Contacts Routes #######################
  get 'contacts/new', to: 'contacts#new', as: :contacts_new
  get 'contacts/edit/(:params)', to: 'contacts#edit', as: :contacts_edit
  patch 'contacts/edit/(:params)', to: 'contacts#patch', as: :contacts_patch
  get 'contacts/index', to: 'contacts#index', as: :contacts_index
  get 'contacts/index/(:params)', to: 'contacts#ProviderIndex', as: :contacts_provider_index
  get 'contacts/delete/(:params)', to: 'contacts#delete', as: :contacts_delete
  post 'contacts/create/(:params)', to: 'contacts#create', as: :contacts_create
  get 'contacts/destroy/(:params)', to: 'contacts#destroy', as: :contacts_destroy
  get 'contacts/view/(:params)', to: 'contacts#view', as: :contacts_view
  ############################################################

  ################## Providers Routes #######################
  get 'providers/new', to: 'providers#new', as: :providers_new
  get 'providers', to: 'providers#index', as: :providers_index
  post 'providers/create/(:params)', to: 'providers#create', as: :providers_create
  get 'providers/provider/(:params)', to: 'providers#view', as: :providers_view
  get 'providers/edit/(:params)', to: 'providers#edit', as: :providers_edit
  get 'providers/delete/(:params)', to: 'providers#delete', as: :providers_delete
  patch 'providers/edit/(:params)', to: 'providers#patch', as: :providers_patch
  ############################################################

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
