class AddTipopropostaidToPropostas < ActiveRecord::Migration
  def self.up
    add_column :propostas, :tipoproposta_id, :integer
    add_column :propostas, :operadora, :string
  end

  def self.down
    remove_column :propostas, :operadora
    remove_column :propostas, :tipoproposta_id
  end
end
