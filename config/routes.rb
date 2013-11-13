OuroPreto::Application.routes.draw do


  get "eventos/index"

  get "eventos/show"

  get "eventos/new"

  get "eventos/index"

  get "tipoeventos/index"

  get "tipoeventos/show"

  get "tipoeventos/new"

  get "tipoeventos/edit"

  get "tipoeventos/create"

  get "acompanhamentos/index"

  get "acompanhamentos/show"

  get "acompanhamentos/new"

  get "acompanhamentos/edit"

  get "acompanhamentos/create"

  get "clientes/index"

  get "clientes/show"

  get "clientes/new"

 # get "contratos/prepara"

  get "contratos/index"

  get "contratos/show"

  get "contratos/new"

  get "comissoes/index"

  get "comissoes/show"

  get "comissoes/edit"

  get "remuneracoes/index"

  get "remuneracoes/show"

  get "histpropostas/index"

  get "histpropostas/show"

  get "histpropostas/destroy"

  get "propostas/new"

  get "propostas/index"

  get "tipopropostas/new"
  
  get "cparametros/new"

  get "operadoras/new"

  get "sessions/new"
  
  resources :eventos
  resources :tipoeventos
  resources :contratos
  resources :histpropostas
  resources :propostas
  resources :corretors
  resources :cparametros
  resources :situacaos
  resources :tipopropostas
	resources :operadoras
  resources :users
  resources :sessions, :only => [ :new, :create, :destroy ]
  resources :remuneracoes
  resources :comissoes
  resources :clientes
  

  root :to => "pages#home"

  match '/eventos_show/:id', :to => 'eventos#show', 
                                              :as => :show
  match '/contratos/prepara/:id', :to => 'contratos#prepara', 
                                              :as => :prepara
	match '/propostas/associa/:id', :to => 'propostas#associa', :as => :associa
	match '/propostas/associa_2/:id', :to => 'propostas#associa_2', :as => :associa_2
  match '/propostas/associa_from_pesquisa/:id', :to => 'propostas#associa_from_pesquisa',
                                                :as => :associa_from_pesquisa   
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


