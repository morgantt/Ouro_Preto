# == Schema Information
#
# Table name: propostas
#
#  id              :integer(4)      not null, primary key
#  operadora_id    :integer(4)
#  tipo            :string(255)
#  numero          :string(255)
#  data_entrada    :date
#  status          :integer(4)
#  nome_status     :string(255)
#  data_status     :date
#  corretor_id     :integer(4)
#  observacao      :text
#  created_at      :datetime
#  updated_at      :datetime
#  tipoproposta_id :integer(4)
#  operadora       :string(255)
#

require 'spec_helper'

describe Proposta do
  pending "add some examples to (or delete) #{__FILE__}"
end
