class CreateTipoproposta < ActiveRecord::Migration
  def self.up
    create_table :tipopropostas do |t|
      t.integer :operadora_id
      t.string :tipo
      t.integer :lmi
      t.integer :lms

      t.timestamps
    end
  end

  def self.down
    drop_table :tipopropostas
  end
end
