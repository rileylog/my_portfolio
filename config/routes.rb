MyPortfolio::Application.routes.draw do

  resources :admins


  resources :posts
  get '/posts/:post_id/pictures/new', to: 'posts#new_image', as: :new_image
  post '/posts/:post_id/pictures/new', to: 'posts#create_image', as: :create_image

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  get "contact-us", to: 'contact_new#new', as: :contact
  post "contact-us", to: 'contact_new#create', as: :contact

root :to => 'static_pages#home'  
 
  get "about-me", to: "static_pages#about_me", as: :about_me
  get "projects", to: "static_pages#projects", as: :projects
  get "posts", to: "posts#index", as: :posts  
  post "posts", to: "posts#create", as: :posts
  get "path", to: 'controller#action', as: :name_of_path
  get 'map_data', to: 'static_pages#data', as: :map_data

  # get "contact-us", to: 'contact_new#new', as: :contact
  # post "contact-us", to: 'contact_new#create', as: :contact

  # get "contact", to: "static_pages#contact_info", as: :contact


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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
