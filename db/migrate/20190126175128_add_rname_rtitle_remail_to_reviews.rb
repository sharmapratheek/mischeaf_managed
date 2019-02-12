class AddRnameRtitleRemailToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :rname, :string
    add_column :reviews, :rtitle, :string
    add_column :reviews, :remail, :string
  end
end
