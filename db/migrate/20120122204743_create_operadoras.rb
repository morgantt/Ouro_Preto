class CreateOperadoras < ActiveRecord::Migration
  def self.up
    create_table :operadoras do |t|
      t.string :nome
      t.string :logo_url
      t.string :corretora
      t.string :banco

      t.timestamps
    end
    add_index :operadoras, :nome, :unique => true
  end

  def self.down
    drop_table :operadoras
  end
end
