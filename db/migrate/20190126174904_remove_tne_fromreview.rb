class RemoveTneFromreview < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :name
  	remove_column :reviews, :title
  	remove_column :reviews, :email
  end
end
