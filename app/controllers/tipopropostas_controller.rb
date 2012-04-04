class TipopropostasController < ApplicationController

 
	def index
	
		@tipoproposta = Tipoproposta.paginate(:page => params[:page], :order => "operadora_id")
		@title = "Todos os Tipos de Propostas"
		@operadora = Operadora.find(:all, :order => "nome")
	end

	 def show

    @tipoproposta = Tipoproposta.find(params[:id])
    @title = @tipoproposta.tipo
    @operadora = Operadora.find(:all, :order => "nome")
    
  end
  def new
  
  	@operadora = session[:oper]
    @novo = "SIM"
  
     	
  	@title = "Novo Tipo de Proposta"
   	@tipoproposta = Tipoproposta.new
 #  	@operadora = Operadora.find(:all, :order => "nome")
  
  end
  
    def create
 # raise params.inspect
  	
   @tipoproposta = Tipoproposta.new(params[:tipoproposta])
  # @tipoproposta.operadora_id = params[tipoproposta][:operadora_id]
    if @tipoproposta.save
      
      redirect_to @tipoproposta, :flash => { :success => "Novo Tipo de Proposta criado com sucesso!" }
    else
     @title = "Novo Tipo de Proposta"
     render "new"
    end
  end
  
   def edit
   
   @novo = "NAO"
   
  		@tipoproposta = Tipoproposta.find(params[:id])
  		@operadora = Operadora.find(:all, :order => "nome")
  		
  		@title = "Edita Tipo de Proposta"
  end	

  
  def update
    @operadora = Operadora.find(:all, :order => "nome")
    @tipoproposta = Tipoproposta.find(params[:id])
 #   @tipoproposta.operadora_id = params[:operadora][operadora_id]
    	if @tipoproposta.update_attributes(params[:tipoproposta])
  		redirect_to @tipoproposta, :flash => { :success => "Tipo de Proposta" }
  	else
  	@title = "Edita Tipo de Proposta"
  	render 'edit'
 	 end	
  end
 def destroy
 	 Tipoproposta.find(params[:id]).destroy
 	 redirect_to operadoras_path, :flash => { :success => "Tipo de Proposta deletado" }
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
