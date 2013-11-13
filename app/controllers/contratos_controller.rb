class ContratosController < ApplicationController

  def index

       @title = " action index - Seleciona Proposta para Novo Contrato"
    
     # @corretor = Corretor.find(:all)
      
      @qc = Proposta.search(params[:q])

      p "----------------------------------------------------------------"
      p Proposta
      p @qc 
      p "----------------------------------------------------------------"

      @proposta_search2 = @qc.result(:distinct => true)
      @proposta_vendidas = @proposta_search2.paginate(:page => params[:page], :per_page =>40,
                                       :order => "numero",:order => "tipo",:order => "operadora")


  end

  def show

  end

  

  def new
    # seleciona proposta para criar contrato e vai para "Prepara_contrato".
    p params
      @title = "Seleciona Proposta para Novo Contrato"
    
      @corretor = Corretor.find(:all)
      @qc = Proposta.stat_vendido.search(params[:q])

      @proposta_search2 = @qc.result(:distinct => true)
      @proposta_vendidas = @proposta_search2.paginate(:page => params[:page], :per_page =>40,
                                       :order => "numero",:order => "tipo",:order => "operadora")
     


     # p  @proposta_search2

  end

  def prepara

    # recebe numero da proposta vindo do "new".


    p " --veio no prepara ------------------- deve ser id proposta -------------------------------"
      p params

      @proposta = Proposta.find(params[:id])
      @contrato = Contrato.new(params[:contrato])

      @title = "Novo Contrato"
    
      @corretor = Corretor.find(:all)
          
      @operadora = Operadora.find(:all, :order => 'nome') 

      @contrato.corretor_id = @proposta.corretor_id
      @contrato.operadora_id = @proposta.operadora_id
      @contrato.tipoproposta_id = @proposta.tipoproposta_id
      @contrato.proposta_id = @proposta.id
      @contrato.data_venda = @proposta.data_status
      
p " --------------------- @proposta-------------------------------"
      p @proposta

p " ---------------------@contratoS-------------------------------"      
      p @contrato

          if @contrato.save
 #       redirect_to propostas_new_path
         redirect_to @contrato, :flash => { :success => "Nova Contrato criado com sucesso!" }
      else
            @title = "Novo Contrato"
            render "show"
      end

 end



def create
 p " --------------------- criar -------------------------------"


      @contrato = Contrato.new(params[:contrato])

       @contrato.corretor_id = @proposta.corretor_id
     
 
      if @contrato.save
        redirect_to propostas_new_path
         redirect_to @contrato, :flash => { :success => "Nova Contrato criado com sucesso!" }
      else
            @title = "Novo Contrato"
            render "new"
      end
end

end