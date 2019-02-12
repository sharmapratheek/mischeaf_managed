class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title1
      t.text :description1
      t.string :title2
      t.text :description2

      t.timestamps
    end
  end
end
