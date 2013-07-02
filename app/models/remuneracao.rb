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
#  ato_da_venda    :boolean(1)      default(TRUE)
#

class Remuneracao < ActiveRecord::Base


	belongs_to  :tipoproposta

attr_accessible :r01, :r02, :r03, :r05, :r06, :r07, :r08, :r09,
				:r10, :r11, :r12, :rvita, :imposto, :imp01, :imp02, :imp03, :imp04,
				:imp05, :imp06, :imp07, :imp08, :imp09, :imp10, :imp11, :imp12, :impvita,
				:r01valid, :r02valid, :r03valid, :r04valid, :r05valid, :r06valid, :r07valid, 
				:r08valid, :r09valid, :r10valid, :r11valid, :r12valid, :rvitavalid,
				:tipoproposta_id, :updated_at, :ativo


validates_numericality_of   :r01, :r02, :r03, :r05, :r06, :r07, :r08, :r09, 
							:r10, :r11, :r12, :rvita, :imposto,   		
							:message => "So pode conter caracteres numericos "



end
