class AddProdReview < ActiveRecord::Migration
  def self.up
    add_column :tasks, :prod_review, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column(:tasks, :prod_review)
  end
end
