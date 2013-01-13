class HistpropostasController < ApplicationController

  def index

  		@title = "Historico"
    
	    @q = Histproposta.search(params[:q])

      @histproposta = @q.result(:distinct => true)
      @corretor = Corretor.all
      @historico = 
      @historyshow = @histproposta.paginate(:page => params[:page], 
      										:order => ["numero", "data_status"])
      















  end

  def show
  end

  def destroy
  end

end
