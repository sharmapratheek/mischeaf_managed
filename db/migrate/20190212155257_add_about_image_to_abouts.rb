class AddAboutImageToAbouts < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :about_image, :string
  end
end
