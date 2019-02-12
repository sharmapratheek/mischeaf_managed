class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
