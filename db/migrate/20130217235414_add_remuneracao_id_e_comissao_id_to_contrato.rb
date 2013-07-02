class AddRemuneracaoIdEComissaoIdToContrato < ActiveRecord::Migration
  def self.up
     add_column :contratos, :comissao_id, :integer
    remove_column :contratos, :ato_venda
  end

  def self.down
    remove_column :contratos, :comissao_id

  end
end
