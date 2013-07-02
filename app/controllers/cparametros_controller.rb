class CparametrosController < ApplicationController

	def index
	
		  @cparametro = Cparametro.paginate(:page => params[:page], :order => "corretor_id")
		  @title = "Todos os Parametros do Corretor"
	     #	@corretor = Corretor.find(:all, :order => "nome")
	end

  def show
  
      @cparametro = Cparametro.find(params[:id])
    
      #    @corretor  = Corretor.find(@cparametro.corretor_id)
    
      @title = @cparametro.maximo
 
  end
  def new
  
      @corretor = session[:corr]
      @novo = "SIM"
        
      @cparametro = Cparametro.new
      @operadora = Operadora.find(:all, :order => 'nome')
  
      @tipoproposta = []
      # raise params.inspect
     
  	 @title = "Novo Parametro"
     
  end
    
  def update_tipo_div
  	
 		   @tipoproposta = Tipoproposta.find(:all, :conditions => ["operadora_id = ?", params[:id]])

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
   
      # Com o @novo=nao vai chamar na view edit a partial field2    
      @novo = "NAO"
      
  		@cparametro = Cparametro.find(params[:id])
  		
  		@corretor = Corretor.find(:all, :order => "nome")
 
  		@title = "Edita Parametro"
  		
  end	

  
  def update
   
      @corretor = Corretor.find(:all, :order => "nome")
      @cparametro = Cparametro.find(params[:id])
    
  
      #  @cparametro.operadora_id = params[:operadora][operadora_id]
  	
    	if @cparametro.update_attributes(params[:cparametro])
          redirect_to @cparametro, :flash => { :success => "Parametro C atualizado" }
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
