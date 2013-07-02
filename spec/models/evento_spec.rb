# == Schema Information
#
# Table name: eventos
#
#  id          :integer(4)      not null, primary key
#  data        :date
#  tipo_evento :string(255)
#  observacao  :string(255)
#  proposta_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#  user        :string(255)
#

require 'spec_helper'

describe Evento do
  pending "add some examples to (or delete) #{__FILE__}"
end
