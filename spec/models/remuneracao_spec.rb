# == Schema Information
#
# Table name: remuneracoes
#
#  id              :integer(4)      not null, primary key
#  ativo           :boolean(1)      default(TRUE)
#  created_at      :datetime
#  updated_at      :datetime
#  r01             :decimal(5, 2)   default(0.0), not null
#  r02             :decimal(5, 2)   default(0.0), not null
#  r03             :decimal(5, 2)   default(0.0), not null
#  r04             :decimal(5, 2)   default(0.0), not null
#  r05             :decimal(5, 2)   default(0.0), not null
#  r06             :decimal(5, 2)   default(0.0), not null
#  r07             :decimal(5, 2)   default(0.0), not null
#  r08             :decimal(5, 2)   default(0.0), not null
#  r09             :decimal(5, 2)   default(0.0), not null
#  r10             :decimal(5, 2)   default(0.0), not null
#  r11             :decimal(5, 2)   default(0.0), not null
#  r12             :decimal(5, 2)   default(0.0), not null
#  rvita           :decimal(5, 2)   default(0.0), not null
#  imp01           :boolean(1)      default(FALSE)
#  imp02           :boolean(1)      default(FALSE)
#  imp03           :boolean(1)      default(FALSE)
#  imp04           :boolean(1)      default(FALSE)
#  imp05           :boolean(1)      default(FALSE)
#  imp06           :boolean(1)      default(FALSE)
#  imp07           :boolean(1)      default(FALSE)
#  imp08           :boolean(1)      default(FALSE)
#  imp09           :boolean(1)      default(FALSE)
#  imp10           :boolean(1)      default(FALSE)
#  imp11           :boolean(1)      default(FALSE)
#  imp12           :boolean(1)      default(FALSE)
#  impvita         :boolean(1)      default(FALSE)
#  imposto         :decimal(5, 2)   default(0.0), not null
#  r01valid        :boolean(1)      default(FALSE)
#  r02valid        :boolean(1)      default(FALSE)
#  r03valid        :boolean(1)      default(FALSE)
#  r04valid        :boolean(1)      default(FALSE)
#  r05valid        :boolean(1)      default(FALSE)
#  r06valid        :boolean(1)      default(FALSE)
#  r07valid        :boolean(1)      default(FALSE)
#  r08valid        :boolean(1)      default(FALSE)
#  r09valid        :boolean(1)      default(FALSE)
#  r10valid        :boolean(1)      default(FALSE)
#  r11valid        :boolean(1)      default(FALSE)
#  r12valid        :boolean(1)      default(FALSE)
#  rvitavalid      :boolean(1)      default(FALSE)
#  tipoproposta_id :integer(4)
#  ato_da_venda    :boolean(1)
#

require 'spec_helper'

describe Remuneracao do
  pending "add some examples to (or delete) #{__FILE__}"
end
