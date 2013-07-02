class AddTipopropostaidToComissao < ActiveRecord::Migration
  def self.up
    add_column :comissoes, :tipoproposta_id, :integer
  end

  def self.down
    remove_column :comissoes, :tipoproposta_id
  end
end
