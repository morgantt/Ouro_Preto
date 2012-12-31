# == Schema Information
#
# Table name: histpropostas
#
#  id          :integer(4)      not null, primary key
#  proposta_id :integer(4)
#  numero      :string(255)
#  status      :integer(4)
#  nome_status :string(255)
#  data_status :date
#  corretor_id :integer(4)
#  observacao  :text
#  operadora   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Histproposta do
  pending "add some examples to (or delete) #{__FILE__}"
end
