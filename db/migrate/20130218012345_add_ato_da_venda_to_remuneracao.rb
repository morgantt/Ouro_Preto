class AddAtoDaVendaToRemuneracao < ActiveRecord::Migration
  def self.up
    add_column :remuneracoes, :ato_da_venda, :boolean, :default => true
  end

  def self.down
    remove_column :remuneracoes, :ato_da_venda
  end
end
