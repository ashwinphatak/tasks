class ResizeTasksName < ActiveRecord::Migration
  def self.up
    change_column :tasks, :name, :string, :limit => 8192
  end

  def self.down
    change_column :tasks, :name, :string, :limit => 255
  end
end
