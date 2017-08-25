Rails.application.routes.draw do
  devise_for :patients
  devise_for :users

  root 'home#homepage'
  get '/home/index', as: :user_root
  get '/home/index2', as: :patient_root
  post '/home/write' => 'home#write'
  get '/home/new' => 'home#new'
  get '/destroy/:id' => 'home#destroy'
  get '/edit/:id' => 'home#edit'
  post '/update/:id' => 'home#update'
  post '/home/write2' => 'home#write2'
  get '/home/new2' => 'home#new2'
  get '/destroy2/:id' => 'home#destroy2'
  get '/edit2/:id' => 'home#edit2'
  post '/update2/:id' => 'home#update2'
  post '/:id/dcomment' => 'home#dcomment'
  get '/home/patientlist' => 'home#patientlist'
  get '/home/patientlist/:id' => 'home#patient_detail'
  post 'home/patient_comment/:patient_id' => 'home#patient_comment'
  get '/home/settings/:id' => 'home#settings'
  get '/home/docsettings' => 'home#docsettings'
  get '/home/book'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
