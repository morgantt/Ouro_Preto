class CreateProposta < ActiveRecord::Migration
  def self.up
    create_table :propostas do |t|
      t.integer :operadora_id
      t.string :tipo
      t.string :numero
      t.date :data_entrada
      t.integer :status
      t.string :nome_status
      t.date :data_status
      t.integer :corretor_id
      t.text :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :propostas
  end
end
