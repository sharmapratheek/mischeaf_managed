class AddImageToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :image, :string
  end
end
