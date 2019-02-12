class AddRatingToBox < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :rating, :string
  end
end
