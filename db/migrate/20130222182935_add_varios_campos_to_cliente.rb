class AddVariosCamposToCliente < ActiveRecord::Migration
  def self.up
    add_column :clientes, :nome, :string
    add_column :clientes, :data_nascimento, :date
    add_column :clientes, :endereco, :string
    add_column :clientes, :cep, :string
    add_column :clientes, :municipio, :string
    add_column :clientes, :cpf, :string
    add_column :clientes, :telefone1, :string
    add_column :clientes, :telefone2, :string
    add_column :clientes, :comentario, :text
    
    end

  def self.down
    remove_column :clientes, :nome, :string
    remove_column :clientes, :data_nascimento, :date
    remove_column :clientes, :endereco, :string
    remove_column :clientes, :cep, :string
    remove_column :clientes, :municipio, :string
    remove_column :clientes, :cpf, :string
    remove_column :clientes, :telefone1, :string
    remove_column :clientes, :telefone2, :string
    remove_column :clientes, :comentario, :text
  end
end
