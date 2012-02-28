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
#

class Tipoproposta < ActiveRecord::Base
	
	attr_accessible :tipo, :lmi, :lms, :operadora_id
		
	belongs_to :operadora
		
	validates_presence_of :tipo, :lmi, :lms,
	 											:message => "Nao pode ser em Branco"
	 											
	 before_validation :converte_uppercase
	
	 validates_numericality_of  :lmi, :lms,
	 														:message => "So pode conter caracteres numericos "
											 
	 validates_format_of  :tipo, :with => /^([A-Za-z\- ]+)$/, 
											 :message => "So pode conter caracteres de A ate Z "
											 
	 											
	
	protected
	
	def converte_uppercase
		self.tipo.upcase!
			
	end

end
