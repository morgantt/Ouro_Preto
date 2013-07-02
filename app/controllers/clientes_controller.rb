class ClientesController < ApplicationController
  def index
  end

  def show
        @cliente = Cliente.find(params[:id])

        @title = "Cliente"
  end

  def new
	
  	   @title = "Novo Cliente"
   	    @cliente = Cliente.new  	

  end

  def create

      @cliente = Cliente.new(params[:cliente])
      if @cliente.save
      
        redirect_to @cliente, :flash => { :success => "Novo Cliente criado com sucesso!" }
      else
        @title = "Novo Cliente"
        render "new"
      end
  end

end
