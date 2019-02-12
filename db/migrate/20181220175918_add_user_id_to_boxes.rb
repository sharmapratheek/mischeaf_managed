class AddUserIdToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :user_id, :integer
  end
end
