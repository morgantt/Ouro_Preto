class AddImpostoEValidToRemuneracao < ActiveRecord::Migration
  def self.up
    add_column :remuneracoes, :imp01, :boolean, :default => false
    add_column :remuneracoes, :imp02, :boolean, :default => false
    add_column :remuneracoes, :imp03, :boolean, :default => false
    add_column :remuneracoes, :imp04, :boolean, :default => false
    add_column :remuneracoes, :imp05, :boolean, :default => false
    add_column :remuneracoes, :imp06, :boolean, :default => false
    add_column :remuneracoes, :imp07, :boolean, :default => false
    add_column :remuneracoes, :imp08, :boolean, :default => false
    add_column :remuneracoes, :imp09, :boolean, :default => false
    add_column :remuneracoes, :imp10, :boolean, :default => false
    add_column :remuneracoes, :imp11, :boolean, :default => false
    add_column :remuneracoes, :imp12, :boolean, :default => false
    add_column :remuneracoes, :impvita, :boolean, :default => false
    add_column :remuneracoes, :imposto, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :remuneracoes, :r01valid, :boolean, :default => false
    add_column :remuneracoes, :r02valid, :boolean, :default => false
    add_column :remuneracoes, :r03valid, :boolean, :default => false
    add_column :remuneracoes, :r04valid, :boolean, :default => false
    add_column :remuneracoes, :r05valid, :boolean, :default => false
    add_column :remuneracoes, :r06valid, :boolean, :default => false
    add_column :remuneracoes, :r07valid, :boolean, :default => false
    add_column :remuneracoes, :r08valid, :boolean, :default => false
    add_column :remuneracoes, :r09valid, :boolean, :default => false
    add_column :remuneracoes, :r10valid, :boolean, :default => false
    add_column :remuneracoes, :r11valid, :boolean, :default => false
    add_column :remuneracoes, :r12valid, :boolean, :default => false
    add_column :remuneracoes, :rvitavalid, :boolean, :default => false
  end


  def self.down
    remove_column :remuneracoes, :imp01
    remove_column :remuneracoes, :imp02
    remove_column :remuneracoes, :imp03
    remove_column :remuneracoes, :imp04
    remove_column :remuneracoes, :imp05
    remove_column :remuneracoes, :imp06
    remove_column :remuneracoes, :imp07
    remove_column :remuneracoes, :imp08
    remove_column :remuneracoes, :imp09
    remove_column :remuneracoes, :imp10
    remove_column :remuneracoes, :imp11
    remove_column :remuneracoes, :imp12
    remove_column :remuneracoes, :impvita
    remove_column :remuneracoes, :imposto
    remove_column :remuneracoes, :r01valid
    remove_column :remuneracoes, :r02valid
    remove_column :remuneracoes, :r03valid
    remove_column :remuneracoes, :r04valid
    remove_column :remuneracoes, :r05valid
    remove_column :remuneracoes, :r06valid
    remove_column :remuneracoes, :r07valid
    remove_column :remuneracoes, :r08valid
    remove_column :remuneracoes, :r09valid
    remove_column :remuneracoes, :r10valid
    remove_column :remuneracoes, :r11valid
    remove_column :remuneracoes, :r12valid
    remove_column :remuneracoes, :rvitavalid
   
  end
end
