Ercheck::Application.routes.draw do
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  ActiveAdmin.routes(self)

  devise_for :users

  root :to => 'info#home'

  resources :functions

  resources :departments

  resources :designations

  resources :highest_qualifications

  resources :enquiries


  resources :employements

  resources :universities

  resources :employers

  resources :statuses

  resources :employees

  resources :datafiles

  get "info/home"

  get "info/faq"

  get "info/support"

  get "info/contact"

  get "info/terms"

  get "info/about"

  get "info/search"

  get "info/privacy"

  get "info/advertise"

  get "info/help"

  get "info/career"

  get "info/associate"

  get "info/access_error"

  resources :employee_imports
  resources :employees do
    collection { post :import }
  end

  devise_for :users do
        get '/users/sign_out' => 'devise/sessions#destroy'
  end

  match "admin/users/:id/change_managers" => "admin/users#change_managers"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

end
