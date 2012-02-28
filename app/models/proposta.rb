# == Schema Information
#
# Table name: propostas
#
#  id           :integer(4)      not null, primary key
#  operadora_id :integer(4)
#  tipo         :string(255)
#  numero       :string(255)
#  data_entrada :date
#  status       :integer(4)
#  nome_status  :string(255)
#  data_status  :date
#  corretor_id  :integer(4)
#  observacao   :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Proposta < ActiveRecord::Base
end
