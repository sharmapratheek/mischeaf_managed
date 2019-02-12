class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :user_id
      t.integer :box_id
      t.string :title
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
