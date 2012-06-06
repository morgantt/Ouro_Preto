class AddMarcaToOperadoras < ActiveRecord::Migration
  def self.up
    add_column :operadoras, :marca, :string
  end

  def self.down
    remove_column :operadoras, :marca
  end
end
