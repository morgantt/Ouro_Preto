class TipopropostasController < ApplicationController
    before_filter :authenticate, :only => [:index, :edit, :update, :destroy] 



    before_filter :admin_user,   :only => :destroy
 
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
    
      @novo = "SIM"
  	   @operadora_id = session[:oper]
      if @operadora_id.nil?
         @novo = "NAO"
      else
        @novo = "SIM"
      end
  
       
      @operadora = Operadora.find(:all, :conditions => { :id => [@operadora_id] } )
      #  p @operadora
     	
      @title = "Novo Tipo de Proposta"
      @tipoproposta = Tipoproposta.new
      #  	@operadora = Operadora.find(:all, :order => "nome")
  
end
  
def create
    # raise params.inspect
  	
    @tipoproposta = Tipoproposta.new(params[:tipoproposta])
      # @tipoproposta.operadora_id = params[tipoproposta][:operadora_id]
    @operadora = Operadora.find(:all, :conditions => { :id => [@tipoproposta] } )
    if @tipoproposta.save
      
        redirect_to @tipoproposta, :flash => { :success => "Novo Tipo de Proposta criado com sucesso!" }
    else
        @title = "Novo Tipo de Proposta"
    
        render "new"
    end
end
  
def edit
    #  p '#### edit ########################################################'
    @novo = "NAO"
   
		@tipoproposta = Tipoproposta.find(params[:id])
    #  		@operadora = Operadora.find(:all, :order => "nome")
		@operadora = Operadora.find(@tipoproposta.operadora_id  )
		@title = "Edita Tipo de Proposta"
      
    @remuneracao = Remuneracao.find( :all, 
                                    :conditions => { :tipoproposta_id => [@tipoproposta] } )

    @comissao = Comissao.find( :all, 
                               :conditions => { :tipoproposta_id => [@tipoproposta] } )
   
end	
 
def update
      #     p '#### update ########################################################'
      @operadora = Operadora.find(:all, :order => "nome")
      @tipoproposta = Tipoproposta.find(params[:id])
      #    @tipoproposta.operadora_id = params[:operadora][operadora_id]
      if @tipoproposta.update_attributes(params[:tipoproposta])

  		   redirect_to @tipoproposta, :flash => { :success => "Tipo de Proposta" }

      else

        	 @title = "Edita Tipo de Proposta"
           render 'edit'
 	    end	
end

def destroy
      p params
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
