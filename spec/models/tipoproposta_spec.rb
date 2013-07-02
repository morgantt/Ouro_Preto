# == Schema Information
#
# Table name: tipopropostas
#
#  id           :integer(4)      not null, primary key
#  operadora_id :integer(4)
#  tipo         :string(255)
#  lmi          :integer(4)
#  lms          :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#  ativo        :boolean(1)      default(TRUE)
#

require 'spec_helper'

describe Tipoproposta do
  pending "add some examples to (or delete) #{__FILE__}"
end
