class ComissoesController < ApplicationController
  def index
  end

  def show
    @title = " Comissao atualizada"
    
    @comissao = Comissao.find(params[:id])

    @tipoproposta = Tipoproposta.find(@comissao.tipoproposta_id)

    @operadora = Operadora.find(@tipoproposta.operadora_id)
    
  end

  def new


    @title = "Nova Comissao"
   
    @@tipopropostaid = params[:format]     
    @comissao = Comissao.new

    @comissao.tipoproposta_id = @@tipopropostaid

    @tipoproposta = Tipoproposta.find(@comissao.tipoproposta_id)

    @operadora = Operadora.find(@tipoproposta.operadora_id)
 
  end

  def create
	
    @comissao = Comissao.new(params[:comissao])

    if @comissao.save
      
      redirect_to @comissao, :flash => { :success => "Nova Comissao criada com sucesso!" }
    else
     @title = "Nova Comissao"
     render "new"
    end
  end

  def edit
        @comissao = Comissao.find(params[:id])
        @title = "Edita Comissao"
  end 

  def update
        @comissao = Comissao.find(params[:id])
        if @comissao.update_attributes(params[:comissao])
          redirect_to @comissao, :flash => { :success => "comissao Atualizada" }
        else
          @title = "Edita comissao"
          render 'edit'
        end   

  end
end