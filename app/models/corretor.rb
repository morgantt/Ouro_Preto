# == Schema Information
#
# Table name: corretors
#
#  id         :integer(4)      not null, primary key
#  nome       :string(255)
#  endereco   :string(255)
#  cep        :string(255)
#  cpf        :string(255)
#  telefone1  :string(255)
#  telefone2  :string(255)
#  banco      :string(255)
#  agencia    :string(255)
#  conta      :string(255)
#  comentario :text
#  created_at :datetime
#  updated_at :datetime
#

class Corretor < ActiveRecord::Base

# identifica quais atributos deste modelo sao modificaveis atraves
# do web interface

	# has_many :cparametros, :dependent => :destroy
	# has_many :tipopropostas, :through => cparametros  
	# has_many :operadoras, :through => cparametros 
	 
	attr_accessible :nome, :endereco, :cep, :cpf, :telefone1, :telefone2, 
									:banco, :agencia, :conta, :comentario 
	
 
	
	validates_presence_of :nome, :endereco, :cep, :cpf, :telefone1,
	 											:message => "Nao pode ser em Branco"
												
	validates_uniqueness_of :nome, :message => "Nome corretor repetido "
	
	before_validation :converte_uppercase
	
	validates_format_of  :nome, :with => /^([A-Za-z\- ]+)$/, 
											 :message => "So pode conter caracteres de A ate Z "
	
	 validates_numericality_of  :cpf, 
	 														:message => "So pode conter caracteres numericos "
	
	
	
	protected
	
		def converte_uppercase
			self.nome.upcase!
			
		end

end
