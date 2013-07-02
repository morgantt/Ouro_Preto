class CreateComissoes < ActiveRecord::Migration
  def self.up
    create_table :comissoes do |t|
      t.boolean :ativo, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :comissoes
  end
end
