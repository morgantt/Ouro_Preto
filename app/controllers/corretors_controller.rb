class CorretorsController < ApplicationController
 before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
#	before_filter	:correct_user, :only => [:edit, :update]
	before_filter :admin_user,   :only => :destroy
 
 
 
	def index
	
		@corretor = Corretor.paginate(:page => params[:page])
		@title = "Todos os Corretores"
	end
 
  def show
   
  	
    @corretor = Corretor.find(params[:id])
    @operadora = Operadora.find(:all)
    @title = @corretor.nome
    session[:corr] = @corretor.id
    # cor_id vai ser usado na scope um_corretor
    cor_id = @corretor.id
 		@cparametro = Cparametro.find( :all, :conditions => { :corretor_id => [@corretor] },
 																	 :order => "operadora_id" )

  #  @propostacount = Proposta.where(:corretor_id=>[@corretor]).count
 	  @propostacount = Proposta.um_corretor(@corretor).status7.count
    @propostas_status7_do_corretor = Proposta.um_corretor(@corretor).status7

  	# @propostacount = Proposta.find(:all, :conditions => 
 		# 															{:corretor_id => [@corretor] }).count															 
 																 
 	#	@operadora = Operadora.find(:all, :conditions => { :operadora_id => [@cparametro] } )
 		
  end
 
  def new
  	
  	@title = "Novo Corretor"
   	@corretor = Corretor.new
  	
  end
  
  def create

   @corretor = Corretor.new(params[:corretor])
    if @corretor.save
      
      redirect_to @corretor, :flash => { :success => "Novo Corretor criado com sucesso!" }
    else
     @title = "Novo Corretor"
     render "new"
    end
  end
  
  def edit
  		@corretor = Corretor.find(params[:id])
  		@title = "Edita Corretor"
  end	

  
  def update
    @corretor = Corretor.find(params[:id])
    	if @corretor.update_attributes(params[:corretor])
  		redirect_to @corretor, :flash => { :success => "Corretor Atualizado" }
  	else
  	@title = "Edita Corretor"
  	render 'edit'
  end		
 end
 
 def destroy
 	 Corretor.find(params[:id]).destroy
 	 redirect_to corretors_path, :flash => { :success => "Corretor deletado" }
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
