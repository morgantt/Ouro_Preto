class AddIndexSecundarioToTipopropostas < ActiveRecord::Migration
  def self.up
  add_index :tipopropostas, :operadora_id
  end

  def self.down
  remove_index :tipopropostas, :operadora_id
  end
end
