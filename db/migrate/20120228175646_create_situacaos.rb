class CreateSituacaos < ActiveRecord::Migration
  def self.up
    create_table :situacaos do |t|
      t.integer :status
      t.string :nomestat

      t.timestamps
     end
  end

  def self.down
    drop_table :situacaos
  end
end
