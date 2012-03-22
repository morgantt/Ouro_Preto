class CreateCparametros < ActiveRecord::Migration
  def self.up
    create_table :cparametros do |t|
      t.integer  :operadora_id
      t.integer  :tipoproposta_id
      t.integer  :corretor_id
      t.integer  :maximo
      t.integer  :minimo

      t.timestamps
    end
    add_index :cparametros, :operadora_id
    add_index :cparametros, :corretor_id
  end

  def self.down
    drop_table :cparametros
  end
end
