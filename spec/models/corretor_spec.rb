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

require 'spec_helper'

describe Corretor do
  pending "add some examples to (or delete) #{__FILE__}"
end
