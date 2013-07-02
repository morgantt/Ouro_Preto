class CreateTipoeventos < ActiveRecord::Migration
  def self.up
    create_table :tipoeventos do |t|
      t.string :nome
      t.integer :numero

      t.timestamps
    end
  end

  def self.down
    drop_table :tipoeventos
  end
end
