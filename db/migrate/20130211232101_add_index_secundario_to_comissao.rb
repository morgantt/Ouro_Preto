class AddIndexSecundarioToComissao < ActiveRecord::Migration
  def self.up
    add_index :comissoes, :tipoproposta_id
  end

  def self.down
    remove_index :comissoes, :tipoproposta_id
  end
end
