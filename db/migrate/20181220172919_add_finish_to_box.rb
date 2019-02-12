class AddFinishToBox < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :finish, :string
  end
end
