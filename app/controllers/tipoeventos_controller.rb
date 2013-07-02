class TipoeventosController < ApplicationController
  
 before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
# before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
 
 
 
  def index
  
      @tipoevento = Tipoevento.paginate(:page => params[:page])
      @title = "Todos os Eventos"
  end
 
  def show

      @tipoevento = Tipoevento.find(params[:id])
      @title = @tipoevento.nome
 #    @tipopid = @tipoevento.id
 #    @tipoproposta = Tipoproposta.find( :all, :conditions => { :tipoevento_id => [@tipopid] } )
   
  end
 
  def new
    
     @title = "Novo tipo de evento"
      @tipoevento = Tipoevento.new
    
  end
  
  def create

      @tipoevento = Tipoevento.new(params[:tipoevento])

      if @tipoevento.save
      
          redirect_to @tipoevento, :flash => { :success => "Novo tipo de evento criado com sucesso!" }
      else
          @title = "Novo tipo de evento"
          render "new"
      end
  end
  
  def edit
      @tipoevento = Tipoevento.find(params[:id])
      @title = "Edita tipo de evento"
  end 

  
  def update
      @tipoevento = Tipoevento.find(params[:id])
      if  @tipoevento.update_attributes(params[:tipoevento])
          redirect_to @tipoevento, :flash => { :success => "tipo de evento Atualizado" }
      else
         @title = "Edita tipo de evento"
         render 'edit'
      end   
  end
 
 def destroy
      Tipoevento.find(params[:id]).destroy
      redirect_to tipoeventos_path, :flash => { :success => "tipo de evento deletado" }
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
        redirect_to(root_path) if !current_user.admin?  || current_user?(user)
    end
  
 
end

