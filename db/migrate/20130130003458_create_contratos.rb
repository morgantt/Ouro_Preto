class CreateContratos < ActiveRecord::Migration
  def self.up
    create_table :contratos do |t|
      t.boolean :ativo, :default => true
      t.boolean :ato_venda,  :default => true
      t.integer :cliente_id
      t.integer :corretor_id
      t.integer :operadora_id
      t.integer :tipoproposta_id
      t.integer :proposta_id
      t.date    :data_venda
      t.date    :data_vigencia
      t.decimal :valor_fatura, :precision => 9, :scale => 2, :null => false, :default => '0'
      t.integer :vidas
      t.string  :numero_contrato

      t.timestamps
    end
  end

  def self.down
    drop_table :contratos
  end
end
