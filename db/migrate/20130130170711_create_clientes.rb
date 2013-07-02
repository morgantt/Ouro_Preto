class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.boolean :ativo, :default => true
    
    
      end
    end 

  def self.down
    drop_table :clientes    

  end
end
