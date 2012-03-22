# == Schema Information
#
# Table name: cparametros
#
#  id              :integer(4)      not null, primary key
#  operadora_id    :integer(4)
#  tipoproposta_id :integer(4)
#  corretor_id     :integer(4)
#  maximo          :integer(4)
#  minimo          :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Cparametro do
  pending "add some examples to (or delete) #{__FILE__}"
end
