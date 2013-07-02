class AddAtivoToTipopropostas < ActiveRecord::Migration
  def self.up
    add_column :tipopropostas, :ativo, :boolean, :default => true
  
  end

  def self.down
    remove_column :tipopropostas, :ativo
   
  end
end
