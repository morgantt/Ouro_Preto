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

require 'spec_helper'

describe Contrato do
  pending "add some examples to (or delete) #{__FILE__}"
end
