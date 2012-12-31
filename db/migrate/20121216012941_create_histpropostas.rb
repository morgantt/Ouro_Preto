class CreateHistpropostas < ActiveRecord::Migration
  def self.up
    create_table :histpropostas do |t|
      t.integer :proposta_id
      t.string :numero
      t.integer :status
      t.string :nome_status
      t.date :data_status
      t.integer :corretor_id
      t.text :observacao
      t.string :operadora

      t.timestamps
    end
  end

  def self.down
    drop_table :histpropostas
  end
end
