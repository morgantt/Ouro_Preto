class AddTipopropostaidToRemuneracao < ActiveRecord::Migration
  def self.up
    add_column :remuneracoes, :tipoproposta_id, :integer
  end

  def self.down
    remove_column :remuneracoes, :tipoproposta_id
  end
end
