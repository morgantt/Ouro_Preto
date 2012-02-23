# == Schema Information
#
# Table name: operadoras
#
#  id         :integer(4)      not null, primary key
#  nome       :string(255)
#  logo_url   :string(255)
#  corretora  :string(255)
#  banco      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Operadora < ActiveRecord::Base
# identifica quais atributos deste modelo sao modificaveis atraves
# do web interface
	attr_accessible :nome, :logo_url, :corretora, :banco
	
	validates_presence_of :nome, :logo_url, :corretora, :banco,
	 											:message => "Nao pode ser em Branco"
												
	validates_uniqueness_of :nome, :message => "Nome corretora repetido "
	
	before_validation :converte_uppercase
	
	validates_format_of  :nome, :banco, :corretora, :with => /^([A-Za-z\- ]+)$/, 
											 :message => "So pode conter caracteres de A ate Z "
	
	
	
	
	
	protected
	
		def converte_uppercase
			self.nome.upcase!
			
		end
end
