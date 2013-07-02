class AddIndexSecundarioToRemuneracao < ActiveRecord::Migration
  def self.up
  add_index :remuneracoes, :tipoproposta_id
  end

  def self.down
  remove_index :remuneracoes, :tipoproposta_id
  end
end