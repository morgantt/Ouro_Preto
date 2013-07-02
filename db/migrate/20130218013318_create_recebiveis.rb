class CreateRecebiveis < ActiveRecord::Migration
  def self.up
    create_table :recebiveis do |t|
      t.boolean :ativo, :default => true
      t.date    :data_previsao
      t.decimal :valor_previsao, :precision => 9, :scale => 2, :null => false, :default => '0'
      t.integer :parcela
      t.date    :data_recebido
      t.decimal :valor_recebido, :precision => 9, :scale => 2, :null => false, :default => '0'
      t.integer :contrato_id

      t.timestamps
    end
  end

  def self.down
    drop_table :recebiveis
  end
end
