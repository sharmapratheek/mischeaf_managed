class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :decsription
      t.string :main_image
      t.string :display_image
      t.string :press_image

      t.timestamps
    end
  end
end
