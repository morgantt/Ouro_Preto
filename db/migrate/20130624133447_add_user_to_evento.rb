class AddUserToEvento < ActiveRecord::Migration
  def self.up
    add_column :eventos, :user, :string
  end

  def self.down
    remove_column :eventos, :user
  end
end
