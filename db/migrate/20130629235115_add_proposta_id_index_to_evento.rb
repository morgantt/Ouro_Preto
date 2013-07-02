class AddPropostaIdIndexToEvento < ActiveRecord::Migration
  def self.up
  	add_index :eventos, :proposta_id
  end

  def self.down
  	remove_index :eventos, :proposta_id
end
end
