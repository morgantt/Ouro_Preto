class SituacaosController < ApplicationController
 before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
#	before_filter	:correct_user, :only => [:edit, :update]
	before_filter :admin_user,   :only => :destroy
 
 
 
	def index
	
		@situacao = Situacao.paginate(:page => params[:page])
		@title = "Todas as situacoes"
	end
 
  def show

    @situacao = Situacao.find(params[:id])
    @title = @situacao.nomestat
 #   @tipopid = @situacao.id
 #   @tipoproposta = Tipoproposta.find( :all, :conditions => { :situacao_id => [@tipopid] } )
   
  end
 
  def new
  	
  	@title = "Nova situacao"
   	@situacao = Situacao.new
  	
  end
  
  def create

   @situacao = Situacao.new(params[:situacao])
    if @situacao.save
      
      redirect_to @situacao, :flash => { :success => "Nova situacao criada com sucesso!" }
    else
     @title = "Nova situacao"
     render "new"
    end
  end
  
  def edit
  		@situacao = Situacao.find(params[:id])
  		@title = "Edita situacao"
  end	

  
  def update
    @situacao = Situacao.find(params[:id])
    	if @situacao.update_attributes(params[:situacao])
  		redirect_to @situacao, :flash => { :success => "situacao Atualizada" }
  	else
  	@title = "Edita situacao"
  	render 'edit'
  end		
 end
 
 def destroy
 	 Situacao.find(params[:id]).destroy
 	 redirect_to situacaos_path, :flash => { :success => "situacao deletada" }
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
		redirect_to(root_path) if !current_user.admin?	|| current_user?(user)
		end
 	
 
end
