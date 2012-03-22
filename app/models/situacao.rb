# == Schema Information
#
# Table name: situacaos
#
#  id         :integer(4)      not null, primary key
#  status     :integer(4)
#  nomestat   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Situacao < ActiveRecord::Base

	attr_accessible :status, :nomestat
		
#	belongs_to :Proposta
		
	validates_presence_of :status, :nomestat,
	 											:message => "Nao pode ser em Branco"
	 											
	 before_validation :converte_uppercase
	
	 validates_numericality_of  :status,
	 														:message => "So pode conter caracteres numericos "
											 
#	 validates_format_of  :nomestat, :with => /^([A-Za-z\- ]+)$/, 
#											 :message => "So pode conter caracteres de A ate Z "
											 
	 											
	
	protected
	
	def converte_uppercase
		self.nomestat.upcase!
			
	end

end
