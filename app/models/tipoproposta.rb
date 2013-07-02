# == Schema Information
#
# Table name: tipopropostas
#
#  id           :integer(4)      not null, primary key
#  operadora_id :integer(4)
#  tipo         :string(255)
#  lmi          :integer(4)
#  lms          :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#  ativo        :boolean(1)      default(TRUE)
#

class Tipoproposta < ActiveRecord::Base
	
	attr_accessible :tipo, :lmi, :lms, :operadora_id, :ativo
		
	belongs_to  	:operadora
	has_many 		:cparametros
	has_many 		:remuneracoes
#	belongs_to  :corretor
#	has_many :corretor, :through => cparametros


	validates_presence_of 	:tipo, :lmi, :lms, :operadora_id,
							:message => "Nao pode ser em Branco"
	 											
	before_validation :converte_uppercase
	
	validates_numericality_of 	:lmi, :lms,
 								:message => "So pode conter caracteres numericos "
											 
	validates_format_of  :tipo, :with => /^([A-Za-z0-9\- ]+)$/, 
								:message => "So pode conter caracteres de A ate Z 0-9 "
											 
	 											
	
	protected
	
	def converte_uppercase
		self.tipo.upcase!
			
	end

end
