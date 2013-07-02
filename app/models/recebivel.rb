# == Schema Information
#
# Table name: recebiveis
#
#  id             :integer(4)      not null, primary key
#  ativo          :boolean(1)      default(TRUE)
#  data_previsao  :date
#  valor_previsao :decimal(9, 2)   default(0.0), not null
#  parcela        :integer(4)
#  data_recebido  :date
#  valor_recebido :decimal(9, 2)   default(0.0), not null
#  contrato_id    :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class Recebivel < ActiveRecord::Base


		belongs_to  :contrato

		attr_accessible :ativo, :data_previsao, :valor_previsao, :parcela, :data_recebido,
						:valor_recebido, :contrato_id 


		validates_numericality_of :valor_previsao, :parcela, :valor_recebido				

		










end
