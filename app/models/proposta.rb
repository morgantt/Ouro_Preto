# == Schema Information
#
# Table name: propostas
#
#  id              :integer(4)      not null, primary key
#  operadora_id    :integer(4)
#  tipo            :string(255)
#  numero          :string(255)
#  data_entrada    :date
#  status          :integer(4)
#  nome_status     :string(255)
#  data_status     :date
#  corretor_id     :integer(4)
#  observacao      :text
#  created_at      :datetime
#  updated_at      :datetime
#  tipoproposta_id :integer(4)
#  operadora       :string(255)
#

class Proposta < ActiveRecord::Base
	#scope :xcxc1, :order(corretor_id) 
	
	attr_accessible :operadora_id, :tipo, :numero, :data_entrada, :status, 
									:nome_status, :data_status, :corretor_id, :observacao,
									:tipoproposta_id, :operadora
									
	validates :numero, :presence   => true,
                      :uniqueness => { :case_sensitive => false,
                                       :message => "Numero de Proposta Repetido" }									
	validates_presence_of :data_entrada, :nome_status, :status, :data_status, :operadora,
	 											:message => "Nao pode ser em Branco"	
	
	scope :xcxc, order(:status)
	scope :xcxc1, where(:status => "8")
	scope :tudo, :order => "operadora_id, numero"
 
 	def self.xcxc2
 		order("status")
 	end


 	def self.um_corretor(cor_id)  
    		where("corretor_id = ?", cor_id)  
  	end  
	def self.status7  
    		where("status >= 7")  
  	end  


end
