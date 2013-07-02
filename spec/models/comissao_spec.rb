# == Schema Information
#
# Table name: comissoes
#
#  id              :integer(4)      not null, primary key
#  ativo           :boolean(1)      default(TRUE)
#  created_at      :datetime
#  updated_at      :datetime
#  p01             :decimal(5, 2)   default(0.0), not null
#  p02             :decimal(5, 2)   default(0.0), not null
#  p03             :decimal(5, 2)   default(0.0), not null
#  p04             :decimal(5, 2)   default(0.0), not null
#  p05             :decimal(5, 2)   default(0.0), not null
#  p06             :decimal(5, 2)   default(0.0), not null
#  p07             :decimal(5, 2)   default(0.0), not null
#  p08             :decimal(5, 2)   default(0.0), not null
#  p09             :decimal(5, 2)   default(0.0), not null
#  p10             :decimal(5, 2)   default(0.0), not null
#  p11             :decimal(5, 2)   default(0.0), not null
#  p12             :decimal(5, 2)   default(0.0), not null
#  pvita           :decimal(5, 2)   default(0.0), not null
#  p01valid        :boolean(1)      default(FALSE)
#  p02valid        :boolean(1)      default(FALSE)
#  p03valid        :boolean(1)      default(FALSE)
#  p04valid        :boolean(1)      default(FALSE)
#  p05valid        :boolean(1)      default(FALSE)
#  p06valid        :boolean(1)      default(FALSE)
#  p07valid        :boolean(1)      default(FALSE)
#  p08valid        :boolean(1)      default(FALSE)
#  p09valid        :boolean(1)      default(FALSE)
#  p10valid        :boolean(1)      default(FALSE)
#  p11valid        :boolean(1)      default(FALSE)
#  p12valid        :boolean(1)      default(FALSE)
#  pvitavalid      :boolean(1)      default(FALSE)
#  tipoproposta_id :integer(4)
#

require 'spec_helper'

describe Comissao do
  pending "add some examples to (or delete) #{__FILE__}"
end
