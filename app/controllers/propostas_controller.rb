class PropostasController < ApplicationController
 
 	def index
		@title = "Todas as Propostas"
    @some = Proposta.all
    @corretor = Corretor.all
		@proposta = Proposta.paginate(:page => params[:page], :order => "numero")
	
	end
	
	def show

    @proposta = Proposta.find(params[:id])
    @operadora = Operadora.find(:all)
   # @corretor1 = Corretor.find(:all)
    @corretor = Corretor.find( @proposta.corretor_id )


    @title = @proposta.numero

 		
  end
  
  
  
  def new
    @title = "Nova Proposta"
    
    @novo = "SIM"
        
    @proposta = Proposta.new
    @operadora = Operadora.all   
    @tipoproposta = []
 
  end

  def create
  p params
   @proposta = Proposta.new(params[:proposta])
 
   @tipoproposta = Tipoproposta.find(:all, :conditions => { :id => [@proposta.tipoproposta_id] })
   @operadora = Operadora.find(:all, :conditions => { :id => [@proposta.operadora_id] })
   @situacao = Situacao.find_by_nomestat('ESTOQUE')
   		 @tipoproposta.each do |item|
	 		   @proposta.tipo =	item.tipo
  		  end
  		  
 		@operadora.each do |item|
	 		   @proposta.operadora =	item.nome
	 		   # delete a marca que esta na frente do numero
	 		   @proposta.numero    = @proposta.numero.delete(item.marca)
	 		   @proposta.numero    = item.marca.concat(@proposta.numero)
  		  end
 		@proposta.data_status = @proposta.data_entrada 
 		@proposta.status      = @situacao.status
 		@proposta.nome_status = @situacao.nomestat
 
    if @proposta.save
      
      redirect_to @proposta, :flash => { :success => "Nova Proposta criada com sucesso!" }
    else
     @title = "Nova Proposta"
     render "new"
    end
  end
  
  	def associa
  	p params
		
  	@operadora = Operadora.find(:all, :order => "nome")
  	
  	@tipoproposta = Tipoproposta.find(:all)
    @corretor = Corretor.find(params[:id]) 
    @car = Corretor.find(:all, :conditions => { :id => params[:id]})
    @situacao  = Situacao.find(:all, :conditions => { :status => "7"})
 
    @proposta = Proposta.find(:all, :conditions => { :status => "8" })
    @correct = @corretor.id
  		@title = "Associa Corretor"

  end	 
  
    def update_tipo_div
     p params
 		 @tipoproposta = Tipoproposta.find(:all, :conditions => ["operadora_id = ?", params[:id]])
    
 	 	#	raise params.inspect
    p '*************************************************'
     @operador = Operadora.find(params[:id])

  end
   
 	 def update_number_div

 		 @proposta = Proposta.find(:all, :conditions => ["tipoproposta_id = ? and status = ?", params[:id], 8] )
       
	end 
	
		def associa_update_button_div
	p params
	
	@title = "Associa Corretor"
	  end
	  
	 	def associa_update_no_button_div
	p params
	
	@title = "Associa Corretor"
	  end
 
  	def associa_2
 
  	@proposta = Proposta.find(params[:proposta_id][:id])

 
   @proposta.corretor_id = params[:id] 
   	
    	if @proposta.update_attributes(params[:proposta])
  		redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
  	else

  	@title = "Edita Proposta"
  	render 'edit'
 	 end	
  		
  end	 
 
  
	def edit

 # Com o @novo=nao vai chamar na view edit a partial field2    
   @novo = "NAO"
      
  	@proposta = Proposta.find(params[:id])
  	@tipoproposta = Tipoproposta.find(:all, :conditions => { :id => [@proposta.tipoproposta_id] })
    @operadora = Operadora.find(:all, :conditions => { :id => [@proposta.operadora_id] })	
  	@title = "Edita Parametro"
  		
  end	 
  
    def update
 
   @proposta = Proposta..find(params[:id])
   #	@tipoproposta = Tipoproposta.find(:all, :conditions => { :id => [@proposta.tipoproposta_id] })
  
   @proposta.inspect
   	
    	if @proposta.update_attributes(params[:proposta])
  		redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
  	else

  	@title = "Edita Proposta"
  	render 'edit'
 	 end	
  end
  
  
 def destroy
 	 Proposta.find(params[:id]).destroy
 	 redirect_to propostas_path, :flash => { :success => "Proposta deletada" }
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
