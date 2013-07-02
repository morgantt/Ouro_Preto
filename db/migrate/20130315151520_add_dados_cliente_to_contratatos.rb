class AddDadosClienteToContratatos < ActiveRecord::Migration
  def self.up
    add_column :contratos, :nome, :string
    add_column :contratos, :data_nascimento, :date
    add_column :contratos, :endereco, :string
    add_column :contratos, :cep, :string
    add_column :contratos, :municipio, :string
    add_column :contratos, :cpf, :string
    add_column :contratos, :telefone1, :string
    add_column :contratos, :telefone2, :string
    add_column :contratos, :comentario, :text
  end

  def self.down
    remove_column :contratos, :nome
    remove_column :contratos, :data_nascimento
    remove_column :contratos, :endereco
    remove_column :contratos, :cep
    remove_column :contratos, :municipio
    remove_column :contratos, :cpf
    remove_column :contratos, :telefone1
    remove_column :contratos, :telefone2
    remove_column :contratos, :comentario
  end
end
