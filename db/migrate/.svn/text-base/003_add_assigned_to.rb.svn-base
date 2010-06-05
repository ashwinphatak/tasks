class AddAssignedTo < ActiveRecord::Migration
  def self.up
    add_column :tasks, :assigned_to, :string, :limit => 16
  end

  def self.down
    remove_column(:tasks, :assigned_to)
  end
end
