# == Schema Information
#
# Table name: clientes
#
#  id              :integer(4)      not null, primary key
#  ativo           :boolean(1)      default(TRUE)
#  nome            :string(255)
#  data_nascimento :date
#  endereco        :string(255)
#  cep             :string(255)
#  municipio       :string(255)
#  cpf             :string(255)
#  telefone1       :string(255)
#  telefone2       :string(255)
#  comentario      :text
#

class Cliente < ActiveRecord::Base


	attr_accessible :nome, :endereco, :cep, :cpf, :telefone1, :telefone2, 
									:municipio, :comentario, :data_nascimento, :ativo 

			

	validates_presence_of :nome, :endereco, :cep, :cpf, :telefone1, :data_nascimento,
	 											:message => "Nao pode ser em Branco"								
	before_validation :converte_uppercase

	validates_format_of  :nome, :endereco, :municipio, :with => /^([A-Za-z0-9\-& ]+)$/, 
						 :message => "So pode conter caracteres de A ate Z 0-9 -& "

	validates_format_of  :cpf, :cep, :telefone1, :telefone2, :with => /^([0-9\- ]+)$/, 
						 :message => "So pode conter caracteres de 0 a 9 e '-' "	

	validates :cpf, 	:presence => true,
                   		:length   => { :within => 11..11 ,
                   		:message    => "cpf Sao 11 digitos" }

    validates :cep, 	:presence => true,
                   		:length   => { :within => 9..9 ,
                   		:message    => "cpe Sao 9 digitos" }           		

protected
	
		def converte_uppercase
			self.nome.upcase!
			self.endereco.upcase!
			self.municipio.upcase!		
		end


end
