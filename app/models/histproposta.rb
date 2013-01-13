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

class Histproposta < ActiveRecord::Base

#	has_many :corrertors
	belongs_to :corretor

	attr_accessible :proposta_id, :numero, :status, :nome_status, :data_status, 
									:corretor_id, :data_status, :corretor_id, :observacao,
									:operadora





end
