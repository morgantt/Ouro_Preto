class CreateEventos < ActiveRecord::Migration
  def self.up
    create_table :eventos do |t|
      t.date :data
      t.string :tipo_evento
      t.string :observacao
      t.integer :proposta_id

      t.timestamps
    end
  end

  def self.down
    drop_table :eventos
  end
end
