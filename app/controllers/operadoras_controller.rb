class OperadorasController < ApplicationController
 before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
#	before_filter	:correct_user, :only => [:edit, :update]
	before_filter :admin_user,   :only => :destroy
 
 
 
	def index
	
		@operadora = Operadora.paginate(:page => params[:page])
		@title = "Todas as Operadoras"
	end
 
  def show

    @operadora = Operadora.find(params[:id])
    @title = @operadora.nome
    
  end
 
  def new
  	
  	@title = "Nova Operadora"
   	@operadora = Operadora.new
  	
  end
  
  def create

   @operadora = Operadora.new(params[:operadora])
    if @operadora.save
      
      redirect_to @operadora, :flash => { :success => "Nova Operadora criada com sucesso!" }
    else
     @title = "Nova Operadora"
     render "new"
    end
  end
  
  def edit
  		@operadora = Operadora.find(params[:id])
  		@title = "Edita Operadora"
  end	

  
  def update
    @operadora = Operadora.find(params[:id])
    	if @operadora.update_attributes(params[:operadora])
  		redirect_to @operadora, :flash => { :success => "Operadora Atualizada" }
  	else
  	@title = "Edita Operadora"
  	render 'edit'
  end		
 end
 
 def destroy
 	 Operadora.find(params[:id]).destroy
 	 redirect_to operadoras_path, :flash => { :success => "Operadora deletada" }
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

