# == Schema Information
#
# Table name: contratos
#
#  id              :integer(4)      not null, primary key
#  ativo           :boolean(1)      default(TRUE)
#  cliente_id      :integer(4)
#  corretor_id     :integer(4)
#  operadora_id    :integer(4)
#  tipoproposta_id :integer(4)
#  proposta_id     :integer(4)
#  data_venda      :date
#  data_vigencia   :date
#  valor_fatura    :decimal(9, 2)   default(0.0), not null
#  vidas           :integer(4)
#  numero_contrato :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  remuneracao_id  :integer(4)
#  comissao_id     :integer(4)
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

class Contrato < ActiveRecord::Base




	attr_accessible :ativo, :cliente_id, :corretor_id, :operadora_id, :tipoproposta_id,
					:proposta_id, :data_venda, :data_vigencia, :valor_fatura, :vidas,
					:numero_contrato, :remuneraca_id, :comissao_id, :nome, :cpf, :cep,
					:data_nascimento, :endereco, :telefone1, :telefone2, :comentario, 
					:municipio

	validates_numericality_of   :valor_fatura, :vidas,   		
							:message => "So pode conter caracteres numericos "

#	validates_format_of  :numero_contrato, :with => /^([A-Za-z0-9\-& ]+)$/, 
#											 :message => "So pode conter caracteres de A ate Z 0-9 -& "
#	validates_presence_of :numero_contrato, :vidas, :valor_fatura,
#	 											:message => "Nao pode ser em Branco"
	
  #	validates_date :data_nascimento									

	has_many :recebiveis, :dependent => :destroy

	belongs_to :corretor




protected
	
	def converte_uppercase
		self.nome.upcase!
			
end




end
