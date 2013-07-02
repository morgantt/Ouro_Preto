class AddVariasColunasToRemuneracao < ActiveRecord::Migration
  def self.up
    add_column :remuneracoes, :r01, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r02, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r03, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r04, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r05, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r06, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r07, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r08, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r09, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r10, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r11, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r12, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'   
    add_column :remuneracoes, :rvita, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'

  end

  def self.down
    remove_column :remuneracoes, :r01
    remove_column :remuneracoes, :r02
    remove_column :remuneracoes, :r03
    remove_column :remuneracoes, :r04
    remove_column :remuneracoes, :r05
    remove_column :remuneracoes, :r06
    remove_column :remuneracoes, :r07
    remove_column :remuneracoes, :r08
    remove_column :remuneracoes, :r09
    remove_column :remuneracoes, :r10
    remove_column :remuneracoes, :r11
    remove_column :remuneracoes, :r12
	remove_column :remuneracoes, :rvita

  end
end
