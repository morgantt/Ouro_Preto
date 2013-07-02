class CreateRemuneracoes < ActiveRecord::Migration
  def self.up
    create_table :remuneracoes do |t|
      t.boolean :ativo, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :remuneracoes
  end
end
