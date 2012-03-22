class CreateCorretors < ActiveRecord::Migration
  def self.up
    create_table :corretors do |t|
      t.string  :nome
      t.string  :endereco
      t.string  :cep
			t.string  :cpf
			t.string  :telefone1
			t.string  :telefone2
			t.string  :banco
			t.string  :agencia
			t.string  :conta
			t.text    :comentario
			
      t.timestamps
    end
    add_index :corretors, :nome
  end

  def self.down
    drop_table :corretors
  end
end
