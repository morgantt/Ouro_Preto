OuroPreto::Application.routes.draw do

  get "histpropostas/index"

  get "histpropostas/show"

  get "histpropostas/destroy"

  get "propostas/new"

  get "tipopropostas/new"
  
  get "cparametros/new"

  get "operadoras/new"

  get "sessions/new"
  
  resources :histpropostas
  resources :propostas
  resources :corretors
  resources :cparametros
  resources :situacaos
  resources :tipopropostas
	resources :operadoras
  resources :users
  resources :sessions, :only => [ :new, :create, :destroy ]

  root :to => "pages#home"
	
	match '/propostas/associa/:id', :to => 'propostas#associa', :as => :associa
	match '/propostas/associa_2/:id', :to => 'propostas#associa_2', :as => :associa_2
	match '/propostas/associa_update_button_div/:idw' => 'propostas#associa_update_button_div',
																					 :as  => :associa_update_button_div
	match '/propostas/update_number_div/:id' => 'propostas#update_number_div', :as => :update_number_div
	match '/propostas/update_tipo_div/:id' => 'propostas#update_tipo_div', :as => :update_tipo_div
	match '/cparametros/update_tipo_div/:id' => 'cparametros#update_tipo_div', :as => :update_tipo_div
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'


#   The priority is based upon order of creation:
#   first created -> highest priority.

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

#== Route Map
# Generated on 24 Mar 2012 22:25
#
#   cparametros_new GET    /cparametros/new(.:format)        {:controller=>"cparametros", :action=>"new"}
#    operadoras_new GET    /operadoras/new(.:format)         {:controller=>"operadoras", :action=>"new"}
#      sessions_new GET    /sessions/new(.:format)           {:controller=>"sessions", :action=>"new"}
#         corretors GET    /corretors(.:format)              {:action=>"index", :controller=>"corretors"}
#                   POST   /corretors(.:format)              {:action=>"create", :controller=>"corretors"}
#      new_corretor GET    /corretors/new(.:format)          {:action=>"new", :controller=>"corretors"}
#     edit_corretor GET    /corretors/:id/edit(.:format)     {:action=>"edit", :controller=>"corretors"}
#          corretor GET    /corretors/:id(.:format)          {:action=>"show", :controller=>"corretors"}
#                   PUT    /corretors/:id(.:format)          {:action=>"update", :controller=>"corretors"}
#                   DELETE /corretors/:id(.:format)          {:action=>"destroy", :controller=>"corretors"}
#       cparametros GET    /cparametros(.:format)            {:action=>"index", :controller=>"cparametros"}
#                   POST   /cparametros(.:format)            {:action=>"create", :controller=>"cparametros"}
#    new_cparametro GET    /cparametros/new(.:format)        {:action=>"new", :controller=>"cparametros"}
#   edit_cparametro GET    /cparametros/:id/edit(.:format)   {:action=>"edit", :controller=>"cparametros"}
#        cparametro GET    /cparametros/:id(.:format)        {:action=>"show", :controller=>"cparametros"}
#                   PUT    /cparametros/:id(.:format)        {:action=>"update", :controller=>"cparametros"}
#                   DELETE /cparametros/:id(.:format)        {:action=>"destroy", :controller=>"cparametros"}
#         situacaos GET    /situacaos(.:format)              {:action=>"index", :controller=>"situacaos"}
#                   POST   /situacaos(.:format)              {:action=>"create", :controller=>"situacaos"}
#      new_situacao GET    /situacaos/new(.:format)          {:action=>"new", :controller=>"situacaos"}
#     edit_situacao GET    /situacaos/:id/edit(.:format)     {:action=>"edit", :controller=>"situacaos"}
#          situacao GET    /situacaos/:id(.:format)          {:action=>"show", :controller=>"situacaos"}
#                   PUT    /situacaos/:id(.:format)          {:action=>"update", :controller=>"situacaos"}
#                   DELETE /situacaos/:id(.:format)          {:action=>"destroy", :controller=>"situacaos"}
#     tipopropostas GET    /tipopropostas(.:format)          {:action=>"index", :controller=>"tipopropostas"}
#                   POST   /tipopropostas(.:format)          {:action=>"create", :controller=>"tipopropostas"}
#  new_tipoproposta GET    /tipopropostas/new(.:format)      {:action=>"new", :controller=>"tipopropostas"}
# edit_tipoproposta GET    /tipopropostas/:id/edit(.:format) {:action=>"edit", :controller=>"tipopropostas"}
#      tipoproposta GET    /tipopropostas/:id(.:format)      {:action=>"show", :controller=>"tipopropostas"}
#                   PUT    /tipopropostas/:id(.:format)      {:action=>"update", :controller=>"tipopropostas"}
#                   DELETE /tipopropostas/:id(.:format)      {:action=>"destroy", :controller=>"tipopropostas"}
#        operadoras GET    /operadoras(.:format)             {:action=>"index", :controller=>"operadoras"}
#                   POST   /operadoras(.:format)             {:action=>"create", :controller=>"operadoras"}
#     new_operadora GET    /operadoras/new(.:format)         {:action=>"new", :controller=>"operadoras"}
#    edit_operadora GET    /operadoras/:id/edit(.:format)    {:action=>"edit", :controller=>"operadoras"}
#         operadora GET    /operadoras/:id(.:format)         {:action=>"show", :controller=>"operadoras"}
#                   PUT    /operadoras/:id(.:format)         {:action=>"update", :controller=>"operadoras"}
#                   DELETE /operadoras/:id(.:format)         {:action=>"destroy", :controller=>"operadoras"}
#             users GET    /users(.:format)                  {:action=>"index", :controller=>"users"}
#                   POST   /users(.:format)                  {:action=>"create", :controller=>"users"}
#          new_user GET    /users/new(.:format)              {:action=>"new", :controller=>"users"}
#         edit_user GET    /users/:id/edit(.:format)         {:action=>"edit", :controller=>"users"}
#              user GET    /users/:id(.:format)              {:action=>"show", :controller=>"users"}
#                   PUT    /users/:id(.:format)              {:action=>"update", :controller=>"users"}
#                   DELETE /users/:id(.:format)              {:action=>"destroy", :controller=>"users"}
#          sessions POST   /sessions(.:format)               {:action=>"create", :controller=>"sessions"}
#       new_session GET    /sessions/new(.:format)           {:action=>"new", :controller=>"sessions"}
#           session DELETE /sessions/:id(.:format)           {:action=>"destroy", :controller=>"sessions"}
#              root        /(.:format)                       {:controller=>"pages", :action=>"home"}
#   update_tipo_dev        /update_tipo_dev(.:format)        {:controller=>"cparametros", :action=>"update_tipo_dev "}
#           contact        /contact(.:format)                {:controller=>"pages", :action=>"contact"}
#             about        /about(.:format)                  {:controller=>"pages", :action=>"about"}
#              help        /help(.:format)                   {:controller=>"pages", :action=>"help"}
#            signup        /signup(.:format)                 {:controller=>"users", :action=>"new"}
#            signin        /signin(.:format)                 {:controller=>"sessions", :action=>"new"}
#           signout        /signout(.:format)                {:controller=>"sessions", :action=>"destroy"}
