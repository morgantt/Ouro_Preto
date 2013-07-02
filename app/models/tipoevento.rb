# == Schema Information
#
# Table name: tipoeventos
#
#  id         :integer(4)      not null, primary key
#  nome       :string(255)
#  numero     :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Tipoevento < ActiveRecord::Base

	has_many :eventos

	
	attr_accessible :nome, :numero
		
#	belongs_to :Proposta
		
	validates_presence_of 	:nome, :numero,
							:message => "Nao pode ser em Branco"
	 											
	 before_validation :converte_uppercase
	
	 validates_numericality_of  :numero,
								:message => "So pode conter caracteres numericos "
											 
 	 validates_format_of  :nome, :with => /^([A-Za-z\- ]+)$/, 
											 :message => "So pode conter caracteres de A ate Z "
											 
	 											
	
	protected
	
	def converte_uppercase
		self.nome.upcase!
			
	end

end
