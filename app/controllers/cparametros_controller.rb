class CparametrosController < ApplicationController

	def index
	
		@cparametro = Cparametro.paginate(:page => params[:page], :order => "corretor_id")
		@title = "Todos os Parametros do Corretor"
	#	@corretor = Corretor.find(:all, :order => "nome")
	end

	 def show
  
    @cparametro = Cparametro.find(params[:id])
    @title = @cparametro.maximo
 
  end
  def new
    p '***************** NEW NEW NEW  ******************************************************'		
    @corretor = session[:corr]
    @novo = "SIM"
       
 # raise params.inspect
     	
  	@title = "Novo Parametro"
   	@cparametro = Cparametro.new
   
  end
  
    def create

   @cparametro = Cparametro.new(params[:cparametro])
 
    if @cparametro.save
      
      redirect_to @cparametro, :flash => { :success => "Novo Parametro criado com sucesso!" }
    else
     @title = "Novo Parametro"
     render "new"
    end
  end
  
   def edit
   p '***************** EDIT EDIT EDIT ******************************************************'
   
   @novo = "NAO"
   
   
  		@cparametro = Cparametro.find(params[:id])
  		@corretor = Corretor.find(:all, :order => "nome")
 
  		@title = "Edita Parametro"
  end	

  
  def update
    @corretor = Corretor.find(:all, :order => "nome")
    @cparametro = Cparametro.find(params[:id])
 #   @cparametro.operadora_id = params[:operadora][operadora_id]
    	if @cparametro.update_attributes(params[:Cparametro])
  		redirect_to @cparametro, :flash => { :success => "Parametro" }
  	else
  	@title = "Edita Parametro"
  	render 'edit'
 	 end	
  end
 def destroy
 	 Cparametro.find(params[:id]).destroy
 	 redirect_to corretors_path, :flash => { :success => "Parametro deletado" }
 end
 		   
 
 	private
 	
 		def authenticate
 			deny_access unless signed_in?
		end
		
		def correct_user 
			@user =User.find(params[:id])
			redirect_to(root_path) unless current_user?(@user)
		end
		
		def admin_user
		user = User.find(params[:id])
		redirect_to(root_path) if !current_user.admin?	|| current_user?(user)
		end


end
