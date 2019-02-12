class AddCardExpYearToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_exp_year, :string
  end
end
