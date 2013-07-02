class RemuneracoesController < ApplicationController
  def index
  end

def show
    @title = " Remuneracao atualizada"
    
    @remuneracao = Remuneracao.find(params[:id])

    @tipoproposta = Tipoproposta.find(@remuneracao.tipoproposta_id)

    @operadora = Operadora.find(@tipoproposta.operadora_id)

    
  end

def new


    @title = "Nova Remuneracao"
   
    @@tipopropostaid = params[:format]     
    @remuneracao = Remuneracao.new

    @remuneracao.tipoproposta_id = @@tipopropostaid

    @tipoproposta = Tipoproposta.find(@remuneracao.tipoproposta_id)

    @operadora = Operadora.find(@tipoproposta.operadora_id)

   
  end

def create
	
   @remuneracao = Remuneracao.new(params[:remuneracao])

    if @remuneracao.save
      
      redirect_to @remuneracao, :flash => { :success => "Nova Remuneracao criada com sucesso!" }
    else
     @title = "Nova Remuneracao"
     render "new"
    end
  end

def edit
      @remuneracao = Remuneracao.find(params[:id])
      @title = "Edita Remuneracao"
  end 

def update
    @remuneracao = Remuneracao.find(params[:id])
      if @remuneracao.update_attributes(params[:remuneracao])
      redirect_to @remuneracao, :flash => { :success => "remuneracao Atualizada" }
    else
    @title = "Edita remuneracao"
    render 'edit'
  end   

  end
end