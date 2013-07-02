class HistpropostasController < ApplicationController

  def index

  		@title = "Historico"
    q = 'numero'
	    @q = Histproposta.search(params[:q])
      @r = Proposta.search(params[:q])

      @histproposta = @q.result(:distinct => true)
      @propostah = @r.result(:distinct => true)
      @corretor = Corretor.all
     
      @historyshow = @histproposta.paginate(:page => params[:page], 
      										                  :order => ["numero", "data_status"])
      @propostashow = @propostah.paginate(:page => params[:page], 
                                            :order => ["numero", "data_status"])
      


  end

  def show
  end

  def destroy
  end

end
