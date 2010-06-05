class AddBugFields < ActiveRecord::Migration
  def self.up
    add_column :tasks, :bug, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column(:tasks, :bug)
  end
end
