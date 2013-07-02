class AddPercentuaisEValidToComissao < ActiveRecord::Migration
  def self.up
    add_column :comissoes, :p01, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p02, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p03, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p04, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p05, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p06, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p07, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p08, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p09, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p10, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p11, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p12, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :pvita, :decimal, :precision => 5, :scale => 2, :null => false, :default => '0'
    add_column :comissoes, :p01valid, :boolean, :default => false
    add_column :comissoes, :p02valid, :boolean, :default => false
    add_column :comissoes, :p03valid, :boolean, :default => false
    add_column :comissoes, :p04valid, :boolean, :default => false
    add_column :comissoes, :p05valid, :boolean, :default => false
    add_column :comissoes, :p06valid, :boolean, :default => false
    add_column :comissoes, :p07valid, :boolean, :default => false
    add_column :comissoes, :p08valid, :boolean, :default => false
    add_column :comissoes, :p09valid, :boolean, :default => false
    add_column :comissoes, :p10valid, :boolean, :default => false
    add_column :comissoes, :p11valid, :boolean, :default => false
    add_column :comissoes, :p12valid, :boolean, :default => false
    add_column :comissoes, :pvitavalid, :boolean, :default => false
  end

  def self.down
    remove_column :comissoes, :p01
    remove_column :comissoes, :p02
    remove_column :comissoes, :p03
    remove_column :comissoes, :p04
    remove_column :comissoes, :p05
    remove_column :comissoes, :p06
    remove_column :comissoes, :p07
    remove_column :comissoes, :p08
    remove_column :comissoes, :p09
    remove_column :comissoes, :p10
    remove_column :comissoes, :p11
    remove_column :comissoes, :p12
    remove_column :comissoes, :pvita
    remove_column :comissoes, :p01valid
    remove_column :comissoes, :p02valid
    remove_column :comissoes, :p03valid
    remove_column :comissoes, :p04valid
    remove_column :comissoes, :p05valid
    remove_column :comissoes, :p06valid
    remove_column :comissoes, :p07valid
    remove_column :comissoes, :p08valid
    remove_column :comissoes, :p09valid
    remove_column :comissoes, :p10valid
    remove_column :comissoes, :p11valid
    remove_column :comissoes, :p12valid
    remove_column :comissoes, :pvitavalid
  end
end
