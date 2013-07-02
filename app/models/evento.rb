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

class Evento < ActiveRecord::Base

	belongs_to :tipoevento

	attr_accessible :data, :tipo_evento, :observacao, :proposta_id, :user, :created_at



	def self.uma_proposta(prop_id)  
    		where("proposta_id = ?", prop_id)  
  	end  
	
end

