class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name, :limit => 255, :null => false
      t.boolean :req, :null => false, :default => false
      t.boolean :dev, :null => false, :default => false
      t.boolean :qa, :null => false, :default => false
      t.boolean :prod, :null => false, :default => false
      t.boolean :hide, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
