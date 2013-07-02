class EventosController < ApplicationController

  def index

      @title = "Seleciona Proposta para Novo Contrato"
    
      @corretor = Corretor.find(:all)
      @q = Proposta.stat_evento_678.search(params[:q])

      @proposta_search2 = @q.result(:distinct => true)
      @proposta_vendidas = @proposta_search2.paginate(:page => params[:page], :per_page =>40,
                                       :order => "numero",:order => "tipo",:order => "operadora")
  end

  def show

      @tipoevento = Tipoevento.find(:all) 
      @title = "mostra eventos"
      @corretor = Corretor.find(:all)
      @evento = Evento.where("proposta_id = ? ", params[:format]).order("data")
      @proposta = Proposta.find(params[:format])
   #   @evento = Evento.find(:all, :conditions => { :proposta_id => (params[:format ]) },
   #                                   :order => "data" )
    
      @eventoshow = @evento.paginate(:page => params[:page], :per_page =>40)
  end

  def new

     @proposta = Proposta.find(params[:format])

      @title = "Seleciona Proposta para Novo Contrato"
    
      @corretor = Corretor.find(:all)
      @operadora = Operadora.find(:all)
      @corretor  = Corretor.find(:all)
      @tipoevento = Tipoevento.find(:all, :order => "nome")
      @evento = Evento.new
      @evento.proposta_id = @proposta.id

  end

  def prepara

  end
  

  def edit
  end

  def create
   
    @evento = Evento.new(params[:evento])
     
    @evento.proposta_id =(params[:proposta_id])
    @evento.user = current_user.name
  

       if @evento.save
      
        redirect_to propostas_path, :flash => { :success => "Novo Evento criado com sucesso!" }
      else
        @title = "Novo Evento"
        render "new"
      end
  end

end
