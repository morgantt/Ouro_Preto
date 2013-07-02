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

require 'spec_helper'

describe Cliente do
  pending "add some examples to (or delete) #{__FILE__}"
end
