class CreateTaskNotes < ActiveRecord::Migration
  def self.up
    create_table :task_notes do |t|
      t.integer :task_id
      t.string :note, :limit => 1024, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :task_notes
  end
end
