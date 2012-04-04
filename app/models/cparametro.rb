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

	class Cparametro < ActiveRecord::Base

		belongs_to :operadora
		belongs_to :tipoproposta
		belongs_to :corretor

		attr_accessible :operadora_id, :tipoproposta_id, :corretor_id, :maximo, :minimo

		validates_numericality_of  :maximo, :minimo,
	 														 :message => "So pode conter caracteres numericos "
	 														
		validates_presence_of :maximo, :minimo, :operadora_id, :tipoproposta_id, :corretor_id,
	 									  		:message => "Nao pode ser em Branco"
















end
