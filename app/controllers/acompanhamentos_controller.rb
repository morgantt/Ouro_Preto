class AcompanhamentosController < ApplicationController
  def index
      @title = "Todas as Propostas"
      @corretor = Corretor.find(:all)
      @q = Proposta.search(params[:q])

      @proposta_comp = @q.result(:distinct => true)

      @propostashow2 = @proposta_comp.paginate(:page => params[:acomp_page], :per_page =>15,
                                       :order => "numero",:order => "tipo",:order => "operadora")

  end   

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

end
