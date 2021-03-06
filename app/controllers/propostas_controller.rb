class PropostasController < ApplicationController
  
   #before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
   # before_filter :correct_user, :only => [:edit, :update]
   #before_filter :admin_user,   :only => :destroy



  def index
		  @title = "Todas as Propostas"
    @corretor = Corretor.find(:all)
	    @q = Proposta.search(params[:q])

      @proposta = @q.result(:distinct => true)

      @propostashow = @proposta.paginate(:page => params[:page], :per_page =>40,
                                       :order => "numero",:order => "tipo",:order => "operadora")

  end   
	
	def show

      @proposta = Proposta.find(params[:id])
      @operadora = Operadora.find(:all)
      @stat = Situacao.find(:all, :order => "status")
      # @corretor1 = Corretor.find(:all)
      @corretor = Corretor.find( @proposta.corretor_id )
      @title = @proposta.numero
 		
  end
  
  
  def new
      @title = "Nova Proposta"
    
      @novo = "SIM"
        
      @proposta = Proposta.new
      @operadora = Operadora.find(:all, :order => 'nome') 
      @tipoproposta = []
 
  end

  def create
      @proposta = Proposta.new(params[:proposta])
      @tipoproposta = Tipoproposta.find(:all, :conditions => { :id => [@proposta.tipoproposta_id] })
      @operadora = Operadora.find(:all, :conditions => { :id => [@proposta.operadora_id] })
      @situacao = Situacao.find_by_nomestat('ESTOQUE')
      @corretor = Corretor.find_by_nome('ESTOQUE')

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
      @proposta.corretor_id = @corretor.id
 
      if @proposta.save
      #  redirect_to propostas_new_path
         redirect_to @proposta, :flash => { :success => "Nova Proposta criada com sucesso!" }
      else
            @title = "Nova Proposta"
            render "new"
      end
  end
  
	def associa


      @q1 = Proposta.stat_estoque.search(params[:q])

      @proposta_search2 = @q1.result(:distinct => true)
      @proposta_pra_associar = @proposta_search2.paginate(:page => params[:page], :per_page =>40,
                                       :order => "numero",:order => "tipo",:order => "operadora")
  		
      @operadora = Operadora.find(:all, :order => "nome")
  	
      @tipoproposta = Tipoproposta.find(:all)
      @corretor = Corretor.find(params[:id]) 
      @cor = Corretor.find(:all, :conditions => { :id => params[:id]})
      @situacao  = Situacao.find(:all, :conditions => { :status => "7"})
 
      @proposta = Proposta.stat_estoque.find(:all)
      @correct = @corretor.id
  		@title = "Associa Corretor"

  end	 
  
  def update_tipo_div
      @tipoproposta = Tipoproposta.find(:all, :order => 'tipo', 
                                         :conditions => ["operadora_id = ?", params[:id]])
     	 	#	raise params.inspect
      @operador = Operadora.find(params[:id])

  end
   
  def update_number_div

#  @proposta = Proposta.where("tipoproposta_id = ? and status = ?", params[:id], 8)
 #  .select("substring_index(numero,1,2),CAST(SUBSTR(numero FROM 3) AS UNSIGNED) as numero").order(:numero)

    # esta usando scope 'status8' que selecona somente o status 8 no estoque
  @proposta = Proposta.stat_estoque.where("tipoproposta_id = ? ", params[:id]).order("numero")

   #   @proposta = Proposta.find(:all,
   #                             :conditions => ["tipoproposta_id = ? and status = ?", params[:id], 8],
   #                             :order => "numero" )
       
	end 
	
	def associa_update_button_div
	   	
      @title = "Associa Corretor"
  end
	  
 	def associa_update_no_button_div
	    
      @title = "Associa Corretor"
  end
 
  def associa_2
 
    @proposta = Proposta.find(params[:proposta_id][:id])
    @proposta.corretor_id = params[:id] 

    @hist = Histproposta.new 
    @hist.proposta_id = @proposta.id
    @hist.numero = @proposta.numero
    @hist.status = @proposta.status
    @hist.nome_status = @proposta.nome_status
    @hist.data_status = @proposta.data_status
    @hist.corretor_id = @proposta.corretor_id
    @hist.observacao  = @proposta.observacao
    @hist.operadora   = @proposta.operadora
   	
  	if @proposta.update_attributes(params[:proposta])
        @hist.save
  		redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
  	else

  	@title = "Edita Proposta"
  	render 'edit'
 	  end	
  		
  end	 
 
def associa_from_pesquisa

    @proposta = Proposta.find(params[:title])
    @proposta.corretor_id = params[:id] 
    
    @situacao  = Situacao.find_by_nomestat('NO CAMPO')

# Aqui coloca status "NO CAMPO" e a data de hoje para a mudanca de status na proposta. 
# ----------------------------------------------------------------------------------
  @proposta.nome_status = @situacao.nomestat
  @proposta.status = @situacao.status 
  @proposta.data_status = Date.today
  # Fim da ateracao do status ------------------------------------------------------

    @hist = Histproposta.new 
    @hist.proposta_id = @proposta.id
    @hist.numero      = @proposta.numero
    @hist.status      = @proposta.status
    @hist.nome_status = @proposta.nome_status
    @hist.data_status = @proposta.data_status
    @hist.corretor_id = @proposta.corretor_id
    @hist.observacao  = @proposta.observacao
    @hist.operadora   = @proposta.operadora
    
    if @proposta.update_attributes(params[:proposta])
        @hist.save
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
    

    @proposta = Proposta.find(params[:id])
     #	@tipoproposta = Tipoproposta.find(:all, :conditions => { :id => [@proposta.tipoproposta_id] })

    @stats       = params[:proposta] 
    @proposta_id = params[:id] 
    @stat_id     = @stats[:status] 
    @stat_date   = @stats[:data_status]
   
    @situacao = Situacao.find(@stat_id) 
    @status = @situacao.status
    @nomestat = @situacao.nomestat
    @hist = Histproposta.new 
    @hist.proposta_id = @proposta.id
    @hist.numero = @proposta.numero
    @hist.status = @proposta.status
    @hist.nome_status = @proposta.nome_status
    @hist.data_status = @proposta.data_status
    @hist.corretor_id = @proposta.corretor_id
    @hist.observacao  = @proposta.observacao
    @hist.operadora   = @proposta.operadora


    case @status

    when 0 .. 4, 6, 7

        if @proposta.update_attributes(:status => @status, :nome_status => @nomestat,
                                     :data_status => @stat_date)
              @hist.save
              redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
        else

             @title = "Edita Proposta"
             render 'edit'
        end 

    when 6
  #  p '=======================  6 6 6 6 6 6  seis +++================= '
      @contrato = Contrato.new

        @contrato.corretor_id      = @proposta.corretor_id
        @contrato.operadora_id     = @proposta.operadora_id
        @contrato.tipoproposta_id  = @proposta.tipoproposta_id
        @contrato.proposta_id      = @proposta.id 

        if @proposta.update_attributes(:status => @status, :nome_status => @nomestat,
                                     :data_status => @stat_date)

             if  @hist.save

                if @contrato.save
                            
              redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
        else

             @title = "Edita Proposta"
             render 'edit', :flash => { :success => "ferrou-se" }
        end
        end
        end 

    else

        @estoque_id = Corretor.find_by_nome('ESTOQUE')

        # Volta para o estoque-  nome do corretor ESTOQUE 
          if @proposta.update_attributes(:status => @status, :nome_status => @nomestat,
                                          :data_status => @stat_date, 
                                          :corretor_id => @estoque_id.id )
              @hist.save
              redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
          else

              @title = "Edita Proposta"
              render 'edit'
          end       
    end  
    # if @status < 8 then 
    #     # nao volta para o estoque. continua com o mesmo corretor
 
    # 	  if @proposta.update_attributes(:status => @status, :nome_status => @nomestat,
    #                                  :data_status => @stat_date)
    #           @hist.save
  		#         redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
  	 #    else

  	 #         @title = "Edita Proposta"
  	 #         render 'edit'
 	  #     end	
    # else 
    #     @estoque_id = Corretor.find_by_nome('ESTOQUE')

    #     # Volta para o estoque-  nome do corretor ESTOQUE 
    #       if @proposta.update_attributes(:status => @status, :nome_status => @nomestat,
    #                                       :data_status => @stat_date, 
    #                                       :corretor_id => @estoque_id.id )
    #           @hist.save
    #           redirect_to @proposta, :flash => { :success => "Proposta atualizada" }
    #       else

    #           @title = "Edita Proposta"
    #           render 'edit'
    #       end  
    # end
  end
  
  
  def destroy
 
      Proposta.find(params[:id]).destroy
 	    redirect_to propostas_path, :flash => { :success => "Proposta deletada" }
  end
 		   
 
 	private 

 	
    def authenticate 

 			  deny_access unless signed_in? S        
    end
		
		def correct_user 
        @user =User.find(params[:id])
        redirect_to(root_path) unless current_user?(@user)
		end
		
		def admin_user
		    user = User.find(params[:id])
		    redirect_to(root_path) if !current_user.admin?	|| current_user?(user)
		end

    def hist_prepare
      
        @hist.proposta_id   = @proposta.id
        @hist.numero        = @proposta.numero
        @hist.nome_status   = @proposta.status
        @hist.nome_status   = @proposta.nome_status
        @hist.data_status   = @proposta.data_status
        @hist.corretor_id   = @proposta.corretor_id
        @hist.observacao    = @proposta.observacao
        @hist.operadora     = @proposta.operadora
    end
   

end
